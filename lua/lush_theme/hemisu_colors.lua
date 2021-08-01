local hsl = require('lush').hsl

local black = hsl('#000000')
local white = hsl('#FFFFFF')
local almostWhite = hsl('#EEEEEE')
local almostBlack = hsl('#111111')
local middleDarkGrey = hsl('#777777')
local middleLightGrey = hsl('#999999')
local lightGrey = hsl('#BBBBBB')
local darkGrey = hsl('#444444')

local darkPink = hsl('#63001C')
local middleDarkPink = hsl('#FF0055')
local middleLightPink = hsl('#D65E76')
local lightPink = hsl('#FFAFAF')

local darkBlue = hsl('#005F87')
local middleDarkBlue = hsl('#538192')
local middleLightBlue = hsl('#9FD3E6')
local lightBlue = hsl('#CBE4EE')

local darkGreen = hsl('#5F5F00')
local middleDarkGreen = hsl('#739200')
local middleLightGreen = hsl('#B1D631')
local lightGreen = hsl('#BBFFAA')

local darkTan = hsl('#503D15')
local lightTan = hsl('#ECE1C8')

local bg, norm, comment, dimmed, subtle, faint, accent1, accent2, accent3, accent4
local normRed, normGreen, normBlue, faintRed, faintGreen, faintBlue
if vim.api.nvim_get_option('background') == 'dark' then
    bg = black
    norm = almostWhite
    comment = middleDarkGrey
    dimmed = middleLightGrey
    subtle = darkGrey
    faint = almostBlack
    accent1 = middleLightBlue
    accent2 = middleLightGreen
    accent3 = lightGreen
    accent4 = lightTan
    normRed = middleLightPink
    normGreen = middleLightGreen
    normBlue = middleLightBlue
    faintRed = darkPink
    faintGreen = darkGreen
    faintBlue = darkBlue
else
    bg = white
    norm = almostBlack
    comment = middleLightGrey
    dimmed = middleDarkGrey
    subtle = lightGrey
    faint = almostWhite
    accent1 = middleDarkBlue
    accent2 = middleDarkGreen
    accent3 = middleDarkPink
    accent4 = darkTan
    normRed = middleDarkPink
    normGreen = middleDarkGreen
    normBlue = middleDarkBlue
    faintRed = lightPink
    faintGreen = lightGreen
    faintBlue = lightBlue
end

return {
    bg = bg,
    norm = norm,
    comment = comment,
    dimmed = dimmed,
    subtle = subtle,
    faint = faint,
    accent1 = accent1,
    accent2 = accent2,
    accent3 = accent3,
    accent4 = accent4,
    normRed = normRed,
    normGreen = normGreen,
    normBlue = normBlue,
    faintRed = faintRed,
    faintGreen = faintGreen,
    faintBlue = faintBlue,
}
