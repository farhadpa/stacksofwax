const { Op } = require('sequelize');

const Collection = require('../models/collection');
const Vinyl = require('../models/vinyl');
const Song = require('../models/song');
const Genre = require('../models/genre');

const searchService = async (query) => {
  const collections = await Collection.findAll({
    where: {
      [Op.or]: [
        { collection_name: { [Op.like]: `%${query}%` } },
        { collection_desc: { [Op.like]: `%${query}%` } },
      ],
    },
    include: [
      {
        model: Vinyl,
        include: [
          {
            model: Genre,
          },
        ],
      },
    ],
  });

  const vinyls = await Vinyl.findAll({
    where: {
      [Op.or]: [
        { vinyl_name: { [Op.like]: `%${query}%` } },
        { vinyl_desc: { [Op.like]: `%${query}%` } },
      ],
    },
    include: [
      {
        model: Collection,
      },
      {
        model: Genre,
      },
    ],
  });

  const songs = await Song.findAll({
    where: {
      [Op.or]: [
        { song_name: { [Op.like]: `%${query}%` } },
        { song_artist: { [Op.like]: `%${query}%` } },
      ],
    },
    include: [
      {
        model: Vinyl,
        include: [
          {
            model: Genre,
          },
        ],
      },
    ],
  });

  const genres = await Genre.findAll({
    where: {
        genre_name: { [Op.like]: `%${query}%` },
    },
    include: [
        {
            model: Vinyl,
            include: [
                {
                    model: Collection,
                },
                {
                    model: Song,
                }
            ],
        },
    ],
    });

  return { collections, vinyls, songs, genres};
};

module.exports = {
    searchService,
};
