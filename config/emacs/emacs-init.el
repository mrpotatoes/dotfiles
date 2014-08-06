;; -----------------------------------------------------------------------------
;; The emacs init file.
;;
;;    - Eventually speed things up: http://tychoish.com/rhizome/decreasing-emacs-start-times/
;;    - http://steckerhalter.co.vu/steckemacs.html
;;    - https://github.com/ghoseb/dotemacs
(require 'cl)

;; -----------------------------------------------------------------------------
;; So I don't have to know which things to load.
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Load  the theme paths.
(let ((default-directory "~/.emacs.d/themes/"))
  (normal-top-level-add-subdirs-to-load-path))

;; -----------------------------------------------------------------------------
;; A function to auto load all first level .el files.
(defun load-module-configs (path)
  (let ((files (directory-files path t "\\.el$")))
    (loop for file in files do
      (load file))))

;; All the directories to load.
(load-module-configs "~/.dotfiles/config/emacs/global")
(load-module-configs "~/.dotfiles/config/emacs/module-configurations")
(load-module-configs "~/.dotfiles/config/emacs/modes")

;; No menu bar.
(menu-bar-mode -1)

;; Global URL rendering (and goto capability).
(define-globalized-minor-mode global-goto-address-mode goto-address-mode goto-address-mode)
(global-goto-address-mode)
