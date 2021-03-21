const db = require("../models");
const Post = db.posts;
const Op = db.Sequelize.Op;

exports.create = (req, res) => {
  // Validate request
  if (!req.body.title) {
    res.status(400).send({
      message: "Content can not be empty!",
    });
    return;
  }

  // Create a Post
  const post = {
    title: req.body.title,
    image: req.body.image,
    description: req.body.description,
    published: req.body.published ? req.body.published : false,
  };

  // Save Post in the database
  Post.create(post)
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message: err.message || "Some error occurred while creating the Post.",
      });
    });
};

exports.findAll = (req,res) => {
    const title = req.query.title;
    var condition = title ? { title: {[Op.like]: `%${title}%`}} : null;

    Post.findAll({where: condition})
    .then(data => {
        res.send(data);
    })
    .catch(err => {
        res.status(500).send({
            message:
                err.message || "Some error occurred while retrieving posts."
        });
    });
};

exports.findOne = (req,res) => {
    const id = req.params.id;

    Post.findByPk(id)
    .then(data => {
        res.send(data);
    })
    .catch(err => {
        res.status(500).send({
            message: "Error retrieving Post with id=" + id,
        });
    });
};

exports.update = (req,res) => {
    const id = req.params.id;

    Post.update(req.body, {
        where: {id: id}
    })
    .then(num => {
        if(num == 1) {
            res.send({
              message: "Post was updated successfully.",
            });
        } else {
            res.send({
              message: `Cannot update Post with id=${id}. Maybe Post was not found or req.body is empty!`,
            });
        }
    })
    .catch(err => {
        res.status(500).send({
          message: "Error updating Post with id=" + id,
        });
    });
};