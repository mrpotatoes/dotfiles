;; --------------------------------------------------------------------------------
;; Delete word without adding it to kill ring in minibuffer
(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.dotfiles/config/emacs/recipes/")
(setq el-get-verbose t)

;; personal recipes
(setq el-get-sources
  '((:name el-get :branch "master")

  (:name magit
    :before (global-set-key (kbd "C-x C-z") 'magit-status))

  (:name expand-region
    :before (global-set-key (kbd "C-@") 'er/expand-region))

  (:name descbinds-anything
    :after (progn
      (descbinds-anything-install)
      (global-set-key (kbd "C-h b") 'descbinds-anything)))

  (:name goto-last-change
    :before (global-set-key (kbd "C-x C-/") 'goto-last-change))))

;; My packages
;; http://jonebird.com/2013/06/25/managing-my-emacs-addons-with-el-get/
;; http://www.emacswiki.org/emacs/el-get
;; http://tapoueh.org/emacs/el-get.html
(setq mrpotatoes-packages
  (append
    ;; list of packages we use straight from official recipes
    '(
      ;; Create recipes for these
      ; bcycle flycheck-tip emacs-color-theme-solarized emacs-git-gutter
      ; emacs-helm-gtags
      ; syntax-subword 
      emacs-modules-mirror 
      multiple-cursors projectile company-mode autopair web-mode flycheck
      gist tabulated-list yasnippet indicators magit php-mode expand-region 
      highlight-symbol hideshow-org jade-mode emacs-dirtree ido-vertical-mode
      markdown-mode js2-mode projectile ack-and-a-half helm 
    )
  (mapcar 'el-get-as-symbol (mapcar 'el-get-source-name el-get-sources))))

(el-get 'sync mrpotatoes-packages)