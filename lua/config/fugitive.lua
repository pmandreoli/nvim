local utils = require('utils')utils.map('n', '<leader>M', '<cmd>Gvdiffsplit!<CR>')  -- Git diff
local utils = require('utils')utils.map('n', '<leader>hh', '<cmd>diffget //2<CR>')  -- Git diffget left
local utils = require('utils')utils.map('n', '<leader>ll', '<cmd>diffget //3<CR>')  -- Git diffget right
