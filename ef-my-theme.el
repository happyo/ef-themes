;;; ef-spring-theme.el --- Legible light theme -*- lexical-binding:t -*-

;; Copyright (C) 2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Ef-Themes Development <~protesilaos/ef-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/ef-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/ef-themes
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

  (deftheme ef-my "My light theme.")

  (defconst ef-my-palette
    '(
;;; Basic values

      (bg-main     "#E8EDB9")
      (fg-main     "#22202E")
      (bg-dim      "#E9D7DF")
      (fg-dim      "#777294")
      (bg-alt      "#CCCCD6")
      (fg-alt      "#F07C82")

      (bg-active   "#E2E1E4")
      (bg-inactive "#BACCD9")

;;; Basic hues for foreground values

      (red             "#C91F37")
      (red-warmer      "#DB5A6B")
      (red-cooler      "#81001E")
      (red-faint       "#DC6B82")
      (green           "#21A675")
      (green-warmer    "#779649")
      (green-cooler    "#01847F")
      (green-faint     "#6CA984")
      (yellow          "#F2C830")
      (yellow-warmer   "#D78812")
      (yellow-cooler   "#B2A421")
      (yellow-faint    "#927B2B")
      (blue            "#2296D7")
      (blue-warmer     "#8D68F3")
      (blue-cooler     "#002FA7")
      (blue-faint      "#82D8CF")
      (magenta         "#d5206f")
      (magenta-warmer  "#ED5736")
      (magenta-cooler  "#810DAE")
      (magenta-faint   "#CCA4E3")
      (cyan            "#3AB6DD")
      (cyan-warmer     "#A4ABD6")
      (cyan-cooler     "#289BA3")
      (cyan-faint      "#AED0EE")

;;; Basic hues for background values

      (bg-red      "#F6BEC8")
      (bg-green    "#C3D94E")
      (bg-yellow   "#FFFBC7")
      (bg-blue     "#afdfff")
      (bg-magenta  "#CCA4E3")
      (bg-cyan     "#7397AB")

      (bg-red-subtle      "#ffcfbf")
      (bg-green-subtle    "#b9f2c6")
      (bg-yellow-subtle   "#fff576")
      (bg-blue-subtle     "#ccdfff")
      (bg-magenta-subtle  "#ffcdff")
      (bg-cyan-subtle     "#bfeaff")

;;; Diffs

      (bg-added          "#caf4da")
      (bg-added-faint    "#dff6ea")
      (bg-added-refine   "#bae9cf")
      (fg-added          "#005000")

      (bg-changed        "#ffdfb9")
      (bg-changed-faint  "#ffefcb")
      (bg-changed-refine "#ffcfa0")
      (fg-changed        "#553d00")

      (bg-removed        "#ffcee0")
      (bg-removed-faint  "#ffdfe6")
      (bg-removed-refine "#f5b6c8")
      (fg-removed        "#8f1313")

;;; Graphs

      (red-graph-0-bg     "#ef7969")
      (red-graph-1-bg     "#ffaab4")
      (green-graph-0-bg   "#4faa09")
      (green-graph-1-bg   "#8fef00")
      (yellow-graph-0-bg  "#ffcf00")
      (yellow-graph-1-bg  "#f9ff00")
      (blue-graph-0-bg    "#7090ff")
      (blue-graph-1-bg    "#9fc6ff")
      (magenta-graph-0-bg "#e07fff")
      (magenta-graph-1-bg "#fad0ff")
      (cyan-graph-0-bg    "#70d3f0")
      (cyan-graph-1-bg    "#afefff")

;;; Special hues

      (bg-mode-line  "#AFD7EC")
      (fg-mode-line  "#243228")
      (bg-accent     "#880044")
      (bg-completion "#ccedff")
      (bg-hover      "#ffc09f")
      (bg-hover-secondary "#feb5ff")
      (bg-hl-line    "#f9e0e5")
      (bg-region     "#d0e6ff")
      (bg-paren      "#7fddd0")
      (bg-err        "#ffe8e0") ; check with err
      (bg-warning    "#ffecba") ; check with warning
      (bg-info       "#ccf5dd") ; check with info

      (border        "#b4c4c0")
      (cursor        "#BA2F7B")
      (fg-intense    "#000000")

      (modeline-err     red)
      (modeline-warning yellow)
      (modeline-info    blue)

      (underline-err     "#ef0f1f")
      (underline-warning "#bf5f00")
      (underline-info    "#02af52")

;;; Conditional hues

      (bg-region-intense "#caaadf")

;;; Mappings

;;;; General mappings

      (err red-warmer)
      (warning yellow)
      (info green-cooler)

      (link blue)
      (link-alt green-cooler)
      (name magenta-warmer)
      (keybind red-cooler)
      (identifier magenta-faint)
      (prompt magenta-warmer)

;;;; Code mappings

      (builtin magenta)
      (comment yellow-faint)
      (constant red-cooler)
      (fnname magenta-warmer)
      (keyword magenta-cooler)
      (preprocessor green-warmer)
      (docstring cyan-faint)
      (string yellow-warmer)
      (type cyan-warmer)
      (variable blue-warmer)
      (rx-escape cyan-cooler) ; compare with `string'
      (rx-construct red-cooler)

;;;; Accent mappings

      (accent-0 magenta-cooler)
      (accent-1 yellow)
      (accent-2 cyan-cooler)
      (accent-3 red)

;;;; Date mappings

      (date-common cyan-cooler)
      (date-deadline red-warmer)
      (date-event fg-alt)
      (date-holiday cyan-cooler)
      (date-now fg-main)
      (date-scheduled yellow)
      (date-weekday cyan)
      (date-weekend red-faint)

;;;; Prose mappings

      (prose-code yellow)
      (prose-done green-cooler)
      (prose-macro cyan-cooler)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-tag yellow-faint)
      (prose-todo red-warmer)
      (prose-verbatim magenta-cooler)

;;;; Mail mappings

      (mail-cite-0 yellow-cooler)
      (mail-cite-1 magenta)
      (mail-cite-2 blue-warmer)
      (mail-cite-3 cyan-warmer)
      (mail-part magenta-faint)
      (mail-recipient magenta-warmer)
      (mail-subject magenta-cooler)
      (mail-other magenta)

;;;; Rainbow mappings

      (rainbow-0 magenta-warmer)
      (rainbow-1 magenta-cooler)
      (rainbow-2 yellow)
      (rainbow-3 cyan)
      (rainbow-4 magenta)
      (rainbow-5 blue-warmer)
      (rainbow-6 red-cooler)
      (rainbow-7 cyan-cooler)
      (rainbow-8 yellow-cooler))
    "The `ef-my' palette.")

   (defvar ef-my-palette-overrides nil
    "Overrides for `ef-spring-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Ef themes,
refer to `ef-themes-common-palette-overrides'.")

  (ef-themes-theme ef-my ef-my-palette ef-my-palette-overrides)

  (provide-theme 'ef-my))

;;;###theme-autoload
(put 'ef-my 'theme-properties '(:background-mode light :kind color-scheme :family ef))

;;; ef-my-theme.el ends here

