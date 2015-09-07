;;; Package --- Summary

;;; Commentary:

;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-mode-hook
   (quote
    (er/add-latex-mode-expansions
     (lambda nil
       (run-hooks
        (quote prelude-latex-mode-hook)))
     LaTeX-preview-setup smartparens-mode rainbow-delimiters-mode)))
 '(ac-etags-requires 1)
 '(calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
 '(calendar-chinese-location-name "京都")
 '(calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
 '(calendar-latitude 35.01)
 '(calendar-longitude 135.47)
 '(calendar-week-start-day 1)
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-anaconda
     (company-auctex-macros company-auctex-symbols company-auctex-environments)
     company-auctex-bibs company-auctex-labels company-abbrev company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-ropemacs company-cmake company-capf
     (company-dabbrev-code company-gtags company-etags company-keywords)
     company-oddmuse company-files company-dabbrev)))
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(erc-autojoin-channels-alist
   (quote
    (("freenode" "#archlinux-cn" "#emacs" "#cafemol" "##cafemol"))))
 '(erc-autojoin-mode t)
 '(erc-autojoin-timing (quote ident))
 '(erc-email-userid "noinil@gmail.com")
 '(erc-fill-column 120)
 '(erc-fill-mode t)
 '(erc-match-mode t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notify readonly ring services stamp spelling track truncate)))
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
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-linum-mode t)
 '(global-page-break-lines-mode t)
 '(global-visual-line-mode t)
 '(isearch-allow-scroll t)
 '(mac-command-modifier (quote super))
 '(mac-option-modifier (quote meta))
 '(minimap-always-recenter t)
 '(minimap-width-fraction 0.15)
 '(minimap-window-location (quote right))
 '(org-agenda-files
   (quote
    ("~/Org/anniversary.org" "~/Org/gtd.org" "~/Org/reading.org" "~/Org/journal.org" "~/Org/records.org")))
 '(org-archive-location "~/Org/archive.org::* From %s")
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/Org/gtd.org" "Tasks")
      "* TODO %?
 %i
 " :empty-lines-before 2 :empty-lines-after 2)
     ("i" "Idea" entry
      (file+headline "~/Org/notes.org" "Ideas")
      "* %?
 Caught on %T
 %i
" :empty-lines-before 2 :empty-lines-after 2)
     ("m" "Movie" entry
      (file+headline "~/Org/notes.org" "Entertainments")
      "* %?
 Watched on %T
 %i
" :empty-lines-before 2 :empty-lines-after 2)
     ("n" "Note" entry
      (file+headline "~/Org/notes.org" "Notes")
      "* %?
 Taken at %T
 %i
 " :empty-lines-before 2 :empty-lines-after 2)
     ("j" "Journal" entry
      (file+datetree "~/Org/journal.org")
      "** %?
 Logged at %T
 %i
 " :empty-lines-before 1 :empty-lines-after 1))))
 '(org-default-notes-file "~/Org/notes.org")
 '(org-directory "~/Org")
 '(org-refile-targets
   (quote
    (("~/Org/someday.org" :maxlevel . 2)
     ("~/Org/gtd.org" :maxlevel . 2))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
     (sequence "NEXT(n)" "SPECIFIED(i!)")
     (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
     (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
     (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)"))))
 '(ruler-mode-current-column-char 86)
 '(size-indication-mode t)
 '(smartparens-global-mode t)
 '(sml/pos-id-separator " ☛ ")
 '(sml/pre-id-separator "✩")
 '(tool-bar-mode nil)
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
 '(flycheck-warning ((t (:underline (:color "lime green" :style wave)))))
 '(font-latex-math-face ((t (:foreground "orange red"))))
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "yellow" :weight bold))))
 '(font-latex-string-face ((t (:inherit font-lock-string-face :foreground "lime green"))))
 '(font-lock-builtin-face ((t (:foreground "#81a618" :weight bold))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#78766c"))))
 '(font-lock-comment-face ((t (:foreground "#6e684c"))))
 '(font-lock-constant-face ((t (:foreground "#e1a7a1"))))
 '(font-lock-doc-face ((t (:foreground "#5165b8"))))
 '(font-lock-function-name-face ((t (:foreground "#aadbdd"))))
 '(font-lock-keyword-face ((t (:foreground "#a7c98b" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#8657a1"))))
 '(font-lock-reference-face ((t (:foreground "#8657a1"))))
 '(font-lock-string-face ((t (:foreground "#1aaeed" :slant italic))))
 '(font-lock-type-face ((t (:foreground "#7aa183"))))
 '(font-lock-variable-name-face ((t (:foreground "#b8bfed"))))
 '(isearch ((t (:background "#2B2B2B" :foreground "green yellow" :weight bold :height 1.1))))
 '(italic ((t (:slant italic))))
 '(lazy-highlight ((t (:background "#383838" :foreground "orange" :weight bold))))
 '(minimap-active-region-background ((t (:background "dark slate gray"))))
 '(mode-line ((t (:background "gray19" :box (:line-width 1 :color "dark cyan")))))
 '(mode-line-inactive ((t (:background "#383838" :box (:line-width 1 :color "gray23")))))
 '(org-checkbox-statistics-done ((t (:inherit org-done))) t)
 '(org-checkbox-statistics-todo ((t (:inherit org-todo))) t)
 '(org-done ((t (:foreground "green yellow" :weight bold))))
 '(org-level-1 ((t (:foreground "yellow" :weight bold :height 1.2))))
 '(org-level-3 ((t (:foreground "#93D0E3"))))
 '(org-level-5 ((t (:foreground "indian red"))))
 '(org-level-6 ((t (:foreground "steel blue"))))
 '(org-level-7 ((t (:inherit outline-7 :foreground "brown"))))
 '(org-scheduled-previously ((t (:foreground "DarkGoldenrod1"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark khaki"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "magenta"))))
 '(ruler-mode-column-number ((t (:inherit ruler-mode-default :foreground "#B4CDCD"))))
 '(ruler-mode-comment-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-default ((t (:inherit default :background "#1D2D1D" :foreground "seagreen" :box (:line-width 1 :color "#ADFF2F" :style released-button)))))
 '(ruler-mode-fill-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-pad ((t (:inherit ruler-mode-default))))
 '(show-paren-mismatch ((t (:background "#6F6F6F" :foreground "green yellow" :weight bold))))
 '(sml/col-number ((t (:foreground "olive drab"))))
 '(sml/line-number ((t (:foreground "yellow4"))))
 '(sml/modes ((t (:foreground "yellow"))))
 '(sml/numbers-separator ((t (:foreground "medium sea green"))))
 '(widget-field ((t (:background "dark gray" :foreground "blue3")))))

;;; custom.el ends here
