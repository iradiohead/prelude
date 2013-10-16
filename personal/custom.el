;;; Package --- Summary

;;; Commentary:

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-mode-hook (quote (er/add-latex-mode-expansions (lambda nil (run-hooks (quote prelude-latex-mode-hook))) LaTeX-preview-setup smartparens-mode rainbow-delimiters-mode)) t)
 '(calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
 '(calendar-chinese-location-name "南京")
 '(calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
 '(calendar-latitude 32.060255)
 '(calendar-longitude 118.796877)
 '(calendar-week-start-day 1)
 '(erc-autojoin-channels-alist (quote (("freenode" "#archlinux-cn" "#emacs" "#rubik" "#physics"))))
 '(erc-autojoin-mode t)
 '(erc-autojoin-timing (quote ident))
 '(erc-email-userid "noinil@gmail.com")
 '(erc-fill-mode t)
 '(erc-match-mode t)
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notify readonly ring services stamp spelling track truncate)))
 '(erc-nick "oinil")
 '(erc-nickserv-passwords (quote ((freenode (("oinil" . "oionillingig"))))))
 '(erc-prompt "$ ERC =~~~~>")
 '(erc-prompt-for-nickserv-password nil)
 '(erc-prompt-for-password nil)
 '(erc-server "irc.freenode.net")
 '(erc-server-coding-system (quote (utf-8 . utf-8)))
 '(erc-server-reconnect-timeout 10)
 '(erc-services-mode t)
 '(erc-smiley-mode nil)
 '(erc-speedbar-sort-users-type (quote alphabetical))
 '(erc-system-name "ERC")
 '(erc-user-full-name "Cheng Tan")
 '(erc-warn-about-blank-lines t)
 '(fill-column 80)
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(minimap-always-recenter t)
 '(minimap-width-fraction 0.15)
 '(minimap-window-location (quote right))
 '(org-agenda-files (quote ("~/Org/anniversary.org" "~/Org/gtd.org" "~/Org/journal.org" "~/Org/records.org")))
 '(track-eol t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight ultra-bold))))
 '(diredp-deletion ((t (:foreground "red"))))
 '(diredp-dir-heading ((t (:foreground "deep sky blue" :weight ultra-bold))))
 '(diredp-dir-priv ((t (:foreground "deep sky blue" :weight ultra-bold))))
 '(diredp-exec-priv ((t (:foreground "gold"))))
 '(diredp-file-suffix ((t (:foreground "gold4"))))
 '(diredp-flag-mark ((t (:foreground "green yellow" :weight bold))))
 '(diredp-flag-mark-line ((t (:background "dark green" :foreground "white"))))
 '(diredp-no-priv ((t (:foreground "deep sky blue"))))
 '(diredp-other-priv ((t (:foreground "#111117175555"))))
 '(diredp-rare-priv ((t (:foreground "#FFFF00008080"))))
 '(diredp-read-priv ((t (:foreground "firebrick2"))))
 '(diredp-write-priv ((t (:foreground "olive drab"))))
 '(erc-input-face ((t (:foreground "green yellow"))))
 '(erc-my-nick-face ((t (:foreground "lime green" :weight ultra-bold))))
 '(erc-notice-face ((t (:foreground "#7F9F7F" :weight semi-light))))
 '(erc-prompt-face ((t (:background "#3F3F3F" :foreground "yellow1" :weight extra-bold))))
 '(isearch ((t (:background "#2B2B2B" :foreground "green yellow" :weight bold :height 1.1))))
 '(italic ((t (:slant italic))))
 '(lazy-highlight ((t (:background "#383838" :foreground "orange" :weight bold))))
 '(minimap-active-region-background ((t (:background "dark slate gray"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "yellow" :weight ultra-bold :height 1.2))) t)
 '(org-level-2 ((t (:inherit outline-2 :foreground "OrangeRed1" :height 1.1))) t)
 '(rainbow-delimiters-depth-1-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "brown"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep pink")))))

;;; custom.el ends here
