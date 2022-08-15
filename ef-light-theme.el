;;; ef-light-theme.el --- Legible light theme -*- lexical-binding:t -*-

;; Copyright (C) 2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Ef-Themes Development <~protesilaos/ef-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/ef-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/ef-themes
;; Version: 0.0.0
;; Package-Requires: ((emacs "28.1"))
;; Keywords: faces, theme, accessibility

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The `ef-themes' are a collection of light and dark themes for GNU
;; Emacs whose goal is to provide colorful ("pretty") yet legible
;; options for users who want something with a bit more flair than the
;; `modus-themes' (also designed by me).

;;; Code:



(eval-and-compile
  (require 'ef-themes)

  (deftheme ef-light "Legible light theme.")

  (defconst ef-light-palette
    '(;; Basic tones
      (bg-main  "#ffffff")
      (fg-main  "#202020")
      (bg-dim   "#efefef")
      (fg-dim   "#70627f")
      (bg-alt   "#dbdbdb")
      (fg-alt   "#196f70")

      ;; Basic hues for foreground values
      (red             "#d3303a")
      (red-warmer      "#e00033")
      (red-cooler      "#d50f7f")
      (red-faint       "#c24552")
      (green           "#217a3c")
      (green-warmer    "#4a7d00")
      (green-cooler    "#008858")
      (green-faint     "#61756c")
      (yellow          "#a45f22")
      (yellow-warmer   "#b6532f")
      (yellow-cooler   "#b65050")
      (yellow-faint    "#a65f6a")
      (blue            "#375cd8")
      (blue-warmer     "#4250ef")
      (blue-cooler     "#065fff")
      (blue-faint      "#6060d0")
      (magenta         "#ba35af")
      (magenta-warmer  "#cf25aa")
      (magenta-cooler  "#6052cf")
      (magenta-faint   "#bf3580")
      (cyan            "#1f6fbf")
      (cyan-warmer     "#3f6faf")
      (cyan-cooler     "#1f77bb")
      (cyan-faint      "#506fa0")

      ;; Basic hues for background values
      (bg-red      "#ff8f88")
      (bg-green    "#8adf80")
      (bg-yellow   "#fac200")
      (bg-blue     "#cbcfff")
      (bg-magenta  "#ff9fef")
      (bg-cyan     "#88c8ff")

      ;; Diffs
      (bg-added          "#c0efd0")
      (bg-added-faint    "#d9ffe8")
      (bg-added-refine   "#98e0b0")

      (bg-changed        "#ffdd99")
      (bg-changed-faint  "#ffeebb")
      (bg-changed-refine "#ffba9f")

      (bg-removed        "#ffc0cf")
      (bg-removed-faint  "#ffdfe5")
      (bg-removed-refine "#f7a0af")

      ;; Special hues
      (bg-mode-line  "#b7c7ff") (fg-mode-line  "#151515")
      (bg-accent     "#0000cc") (fg-accent     "#ffffff")
      (bg-completion "#bfe8ff")
      (bg-hover      "#aaeccf")
      (bg-hover-alt  "#b4cfff")
      (bg-hl-line    "#e4efd8")
      (bg-region     "#bfefff")
      (bg-active     "#cbcbcb")
      (bg-paren      "#efa09f")
      (bg-err        "#ffd5ea") ; check with err
      (bg-info       "#e4e1ff") ; check with info

      (border        "#cecfff")
      (cursor        "#0033cc")
      (fg-intense    "#000000")

      ;; Mappings
      (err red-warmer)
      (warning yellow-warmer)
      (info green)

      (link blue-cooler)
      (link-alt magenta)
      (date cyan)
      (name blue)
      (keybind blue-cooler)

      (builtin magenta)
      (comment yellow-faint)
      (constant blue-cooler)
      (fnname magenta-warmer)
      (keyword magenta-cooler)
      (preprocessor red-warmer)
      (docstring cyan-faint)
      (string blue-warmer)
      (type green-cooler)
      (variable cyan-cooler)

      (accent-0 blue-warmer)
      (accent-1 magenta-warmer)
      (accent-2 green-cooler)
      (accent-3 red)

      (mail-0 blue-warmer)
      (mail-1 magenta)
      (mail-2 cyan-cooler)
      (mail-3 yellow-cooler)
      (mail-4 cyan-warmer)

      (rainbow-0 green-cooler)
      (rainbow-1 blue)
      (rainbow-2 magenta-warmer)
      (rainbow-3 cyan-cooler)
      (rainbow-4 yellow-cooler)
      (rainbow-5 magenta-cooler)
      (rainbow-6 red-cooler)
      (rainbow-7 green)
      (rainbow-8 yellow))
    "The `ef-light' palette.")

  (ef-themes-theme ef-light ef-light-palette)

  (provide-theme 'ef-light))

;;; ef-light-theme.el ends here