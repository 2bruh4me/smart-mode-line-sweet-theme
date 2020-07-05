;;; smart-mode-line-sweet-theme.el --- Sweet theme for smart-mode-line  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  weebojensen

;; Author: 2bruh4me
;; Keywords: faces
;; Version: 1
;; URL: https://github.com/2bruh4me/smart-mode-line-sweet-theme
;; Package-Requires: ((emacs "24.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Sweet theme for smart-mode-line.

;;; Code:

(deftheme smart-mode-line-sweet
  "Sweet theme for smart-mode-line.")

(custom-set-faces 'smart-mode-line-sweet-theme
                  '(mode-line-inactive ((t :background "#222235" :box (:line-width 3 :color "#222235"))))
                  '(mode-line          ((t :background "#222235" :box (:line-width 3 :color "#222235"))))
                  '(sml/global         ((t :inherit font-lock-preprocessor-face)))
                  '(sml/filename       ((t :inherit mode-line-buffer-id)))
                  '(sml/prefix         ((t :inherit (font-lock-variable-name-face sml/global))))
                  '(sml/read-only      ((t :inherit (font-lock-type-face sml/not-modified))))
                  '(sml/modes          ((t :foreground nil :inherit sml/filename :weight normal))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'smart-mode-line-sweet)
;;; smart-mode-line-sweet-theme.el ends here
