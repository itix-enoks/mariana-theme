;;; masked-theme.el --- Masked color theme for GNU Emacs.

;; Copyright (C) 2025 M. Enes Kaya

;; Author: M. Enes Kaya
;; E-mail: enoks@tutanota.com
;; URL: https://github.com/itix-enoks/mariana-theme
;; Version: 0.1

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License along
;; with this program. If not, see <https://www.gnu.org/licenses/>.

(deftheme mariana ()
          "A Mariana - low-contrast - color theme for GNU Emacs.")

;; colors with `+c' are lighter; and with `-c' darker
(let ((mariana-fg          "#d5dee9")

      (mariana-bg+2        "#4b5967")
      (mariana-bg+1        "#45505c")
      (mariana-bg          "#343d46")
      (mariana-bg-1        "#2d353c")
      (mariana-bg-2        "#262c33")

      (mariana-white       "#ffffff")
      (mariana-white-1     "#d5dee9")
      (mariana-white-2     "#a7adba")
      (mariana-white-3     "#4a5560")

      (mariana-red         "#ec5f67")
      (mariana-orange      "#f97b58")
      (mariana-yellow      "#f9ae57")
      (mariana-green       "#99c794")
      (mariana-blue        "#6699cc")
      (mariana-magenta     "#c594c5")
      (mariana-cyan        "#5fb3b3")

      (mariana-red-alt     "#f67c82")
      (mariana-green-alt   "#c6e7c3")
      (mariana-orange-alt  "#c29f50")
      (mariana-blue-alt    "#92bae3")
      (mariana-magenta-alt "#e1bae1")
      (mariana-cyan-alt    "#8bd6d7")

      (mariana-warning     "#441144"))

  (custom-theme-set-faces
   'mariana

   ;; ansi-term / vterm
   `(term-color-black ((t (:foreground ,mariana-bg-2 :background ,mariana-bg-2))))
   `(term-color-red ((t (:foreground ,mariana-red :background ,mariana-red))))
   `(term-color-green ((t (:foreground ,mariana-green :background ,mariana-green))))
   `(term-color-blue ((t (:foreground ,mariana-blue :background ,mariana-blue))))
   `(term-color-yellow ((t (:foreground ,mariana-yellow :background ,mariana-yellow))))
   `(term-color-magenta ((t (:foreground ,mariana-magenta :background ,mariana-magenta))))
   `(term-color-cyan ((t (:foreground ,mariana-cyan :background ,mariana-cyan))))
   `(term-color-white ((t (:foreground ,mariana-fg :background ,mariana-fg))))

   ;; company
   `(company-preview ((t (:foreground ,mariana-green :background ,mariana-bg-1))))

   ;; compilation
   `(compilation-info ((t (:foreground ,mariana-green))))
   `(compilation-warning ((t (:foreground ,mariana-yellow))))
   `(compilation-error ((t (:foreground ,mariana-red))))
   `(compilation-mode-line-fail ((t (:foreground ,mariana-red))))
   `(compilation-mode-line-exit ((t (:foreground ,mariana-green))))

   ;; dired
   `(dired-directory ((t (:foreground ,mariana-blue))))
   `(dired-marked ((t (:foreground ,mariana-orange))))
   `(dired-flagged ((t (:inherit dired-marked))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground ,mariana-yellow))))
   `(font-lock-comment-face ((t (:foreground ,mariana-orange-alt))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:foreground ,mariana-red))))
   `(font-lock-doc-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-doc-markup-face ((t (:inherit font-lock-doc-face))))
   `(font-lock-function-name-face ((t (:inherit default))))
   `(font-lock-keyword-face ((t (:foreground ,mariana-magenta))))
   `(font-lock-preprocessor-face ((t (:foreground ,mariana-magenta))))
   `(font-lock-string-face ((t (:foreground ,mariana-green))))
   `(font-lock-type-face ((t (:foreground ,mariana-blue))))
   `(font-lock-variable-name-face ((t (:inherit default))))
   `(font-lock-warning-face ((t (:foreground ,mariana-red :bold t))))
   `(font-lock-negation-char-face ((t (:foreground ,mariana-red))))

   ;; general
   `(cursor ((t (:background "green"))))
   `(default ((t (:foreground ,mariana-fg :background ,mariana-bg))))
   `(fringe ((t (:foreground ,mariana-fg :background ,mariana-bg))))
   `(minibuffer-prompt ((t (:foreground ,mariana-yellow))))
   `(region ((t (:background ,mariana-bg+1))))
   `(link ((t (:foreground ,mariana-yellow :underline t))))
   `(link-visited ((t (:foreground ,mariana-yellow :underline t))))
   `(show-paren-match ((t (:foreground ,mariana-white :background ,mariana-bg+2 :bold t))))
   `(show-paren-mismatch ((t (:background ,mariana-warning :bold t))))

   ;; highlight-indent
   `(highlight-indent-guides-odd-face ((t (:foreground ,mariana-bg+1))))
   `(highlight-indent-guides-even-face ((t (:foreground ,mariana-bg+2))))
   `(highlight-indent-guides-character-face ((t (:foreground ,mariana-bg+2))))

   ;; highlight-numbers
   `(highlight-numbers-number ((t (:foreground ,mariana-red))))

   ;; isearch
   `(isearch ((t (:foreground ,mariana-white :background ,mariana-red))))

   ;; line-numbers
   `(line-number ((t (:inherit default :foreground ,mariana-bg+1 :background ,mariana-bg-1))))
   `(line-number-current-line ((t (:inherit line-number))))

   ;; mode-line
   `(mode-line ((t (:foreground ,mariana-green :background ,mariana-bg-1 :box (:line-width (1 . 1) :color ,mariana-bg+1)))))
   `(mode-line-inactive ((t (:foreground ,mariana-bg+2 :background ,mariana-bg-1 :box (:line-width (1 . 1) :color ,mariana-bg+1)))))
   `(mode-line-buffer-id ((t (:weight normal))))

   ;; multiple cursors
   `(mc/cursor-face ((t (:inherit cursor))))

   ;; org
   `(org-date ((t (:foreground ,mariana-blue :background ,mariana-bg))))
   `(org-hide ((t (:foreground ,mariana-bg+1 :background ,mariana-bg))))
   `(org-todo ((t (:foreground ,mariana-red :background ,mariana-bg))))
   `(org-done ((t (:foreground ,mariana-green :background ,mariana-bg))))
   `(org-level-1 ((t (:foreground ,mariana-red :background ,mariana-bg))))
   `(org-level-2 ((t (:foreground ,mariana-magenta :background ,mariana-bg))))
   `(org-level-3 ((t (:foreground ,mariana-blue :background ,mariana-bg))))
   `(org-level-4 ((t (:foreground ,mariana-cyan :background ,mariana-bg))))
   `(org-level-5 ((t (:foreground ,mariana-green :background ,mariana-bg))))
   `(org-level-6 ((t (:foreground ,mariana-yellow :background ,mariana-bg))))
   `(org-level-7 ((t (:foreground ,mariana-white :background ,mariana-bg))))
   `(org-headline-done ((t (:inherit org-done))))

   ;; powerline
   `(powerline-active0 ((t (:foreground ,mariana-white :background ,mariana-bg+1))))
   `(powerline-active1 ((t (:foreground ,mariana-white :background ,mariana-bg-1))))
   `(powerline-active2 ((t (:foreground ,mariana-white :background ,mariana-bg-1))))
   `(powerline-inactive0 ((t (:foreground ,mariana-bg+1 :background ,mariana-bg-1))))
   `(powerline-inactive1 ((t (:foreground ,mariana-bg+1 :background ,mariana-bg-1))))
   `(powerline-inactive2 ((t (:foreground ,mariana-bg+1 :background ,mariana-bg-1))))

   ;; rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,mariana-orange))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,mariana-yellow))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,mariana-green))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,mariana-blue))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,mariana-magenta))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,mariana-red))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,mariana-orange))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,mariana-yellow))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,mariana-green))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,mariana-blue))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,mariana-magenta))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,mariana-red))))

   ;; tab-bar
   `(tab-bar ((t (:inherit mode-line))))
   `(tab-bar-tab ((t (:inherit mode-line :foreground ,mariana-cyan  :background ,mariana-bg+1))))
   `(tab-bar-tab-inactive ((t (:inherit mode-line-inactive))))

   ;; whitespace
   `(whitespace-space ((t (:foreground ,mariana-bg+2 :background ,mariana-bg ))))
   `(whitespace-tab ((t (:foreground ,mariana-bg+2 :background ,mariana-bg ))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mariana)

;;; mariana-theme.el ends here.
