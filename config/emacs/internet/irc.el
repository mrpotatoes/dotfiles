;; --------------------------------------------------------------------------------
;; IRC Settings.
;;    - http://emacs-fu.blogspot.com/2009/06/erc-emacs-irc-client.html
(erc-autojoin-mode t)

(setq erc-nick "andric-libresinn")
(setq erc-autojoin-channels-alist
  '(("freenode.net" "#ds-roadhouse" "#ds-dev")))

(setq erc-autojoin-channels-alist
  '((".*\\.freenode.net" "#ds-roadhouse" "#ds-dev"))
     ;(".*\\.gimp.org" "#unix" "#gtk+"))
  )

;; check channels
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE" "324" "329" "332" "333" "353" "477"))

;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

