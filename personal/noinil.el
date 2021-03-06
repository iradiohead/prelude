;;; package --- Summary
;;; noinil@gmail.com my personalize.el for prelude

;;; commentary:

;;; code:

(server-start)

;; auto installation of packages ===============================================
(prelude-require-packages
 '(top-mode yasnippet dired+ ;; tabbar-ruler
            page-break-lines emms hideshow-org lorem-ipsum
            google-translate indent-guide fold-this highlight-indentation
            company-c-headers company-ghc company-math smart-mode-line
            org-bullets vlf edit-server polymode jekyll-modes spray
            ;; gnuplot gnuplot-mode minimap auto-complete ac-etags
            ))


;; set frame title =============================================================
(setq frame-title-format '("" invocation-name " --- " (:eval (if (buffer-file-name) (abbreviate-file-name (buffer-file-name)) "%b"))))

;; set fontset and font ========================================================
(create-fontset-from-fontset-spec "-apple-Consolas-normal-normal-normal-*-13-*-*-*-m-0-fontset-mac")
(add-to-list 'default-frame-alist '(font . "fontset-mac"))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font "fontset-default" 'han "Kaiti SC"))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font "fontset-mac" 'han "Kaiti SC"))

(setq face-font-rescale-alist
      '(
        (".*Kaiti SC.*" . 1.1)
        (".*Heiti SC.*" . 1.1)
        ))

;; line spacing
(setq-default line-spacing 0.1)

;; auto-load files =============================================================


;; dired mode settings =========================================================
;;  ____ ___ ____  _____ ____
;; |  _ \_ _|  _ \| ____|  _ \
;; | | | | || |_) |  _| | | | |
;; | |_| | ||  _ <| |___| |_| |
;; |____/___|_| \_\_____|____/
;;
(require 'dired+)

;; redefine keys
(defun noinil-dired-mode-keys ()
  "Modify keymaps used by `dired+-mode'."
  (local-set-key (kbd "C-n") 'dired-next-line)
  (local-set-key (kbd "C-p") 'dired-previous-line)

  ;; (local-set-key (kbd "C-c C-p") nil) ; remove a key

  ;; …
  )

;; add to dired-mode-hook
(add-hook 'dired-mode-hook 'noinil-dired-mode-keys)
;;  ============================================================================


;; eim settings ================================================================
;;       _
;;   ___(_)_ __ ___
;;  / _ \ | '_ ` _ \
;; |  __/ | | | | | |
;;  \___|_|_| |_| |_|
;;
;; (add-to-list 'load-path "/home/noinil/.eplugins/eim")
;; (autoload 'eim-use-package "eim" "Another Emacs input method")
;; (setq eim-use-tooltip nil)

;; (register-input-method
;; "eim-wb" "euc-cn" 'eim-use-package
;; "五笔" "汉字五笔输入法" "wb.txt")
;; (register-input-method
;; "eim-py" "euc-cn" 'eim-use-package
;; "拼音" "汉字拼音输入法" "py.txt")

;; 用 ; 暂时输入英文
;; (require 'eim-extra)
;; (global-set-key ";" 'eim-insert-ascii)
;;  ============================================================================

;; org-mode settings ===========================================================
;;                                            _
;;   ___  _ __ __ _       _ __ ___   ___   __| | ___
;;  / _ \| '__/ _` |_____| '_ ` _ \ / _ \ / _` |/ _ \
;; | (_) | | | (_| |_____| | | | | | (_) | (_| |  __/
;;  \___/|_|  \__, |     |_| |_| |_|\___/ \__,_|\___|
;;            |___/
;;
(define-key global-map "\C-cc" 'org-capture)
;; (setq org-capture-templates
;;       '(("t" "Todo" entry (file+headline "~/Org/gtd.org" "Tasks")
;;          "* TODO %?\n %i\n \n \n \n \n")
;;         ("i" "Idea" entry (file+headline "~/Org/notes.org" "Ideas")
;;          "* %?\n Caught on %T\n %i\n \n \n \n \n")
;;         ("m" "Movie" entry (file+headline "~/Org/notes.org" "Entertainments")
;;          "* %?\n Watched on %T\n %i\n \n \n \n \n")
;;         ("n" "Note" entry (file+headline "~/Org/notes.org" "Notes")
;;          "* %?\n Taken at %T\n %i\n \n \n \n \n")
;;         ("j" "Journal" entry (file+datetree "~/Org/journal.org")
;;          "** %?\n Logged at %T\n %i\n \n \n \n \n")))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; =============================================================================


;; yasnippet settings===========================================================
;;
;;  _   _  __ _ ___ _ __ (_)_ __  _ __   ___| |_
;; | | | |/ _` / __| '_ \| | '_ \| '_ \ / _ \ __|
;; | |_| | (_| \__ \ | | | | |_) | |_) |  __/ |_
;;  \__, |\__,_|___/_| |_|_| .__/| .__/ \___|\__|
;;  |___/                  |_|   |_|
;;
(require 'yasnippet)
;; (setq yas-snippet-dirs
;;       '("~/.eplugins/snippets"            ;; personal snippets
;;         ;; "/path/to/some/collection/"      ;; just some foo-mode snippets
;;         "~/.emacs.d/elpa/yasnippet-\*/snippets";; the default collection
;;         ))
(setcar yas-snippet-dirs "~/.eplugins/snippets")
(yas-global-mode 1)
;; =============================================================================


;; auto-complete mode settings =================================================
;;              _                                        _      _
;;   __ _ _   _| |_ ___         ___ ___  _ __ ___  _ __ | | ___| |_ ___
;;  / _` | | | | __/ _ \ _____ / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __/ _ \
;; | (_| | |_| | || (_) |_____| (_| (_) | | | | | | |_) | |  __/ ||  __/
;;  \__,_|\__,_|\__\___/       \___\___/|_| |_| |_| .__/|_|\___|\__\___|
;;                                                |_|
;;
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (require 'auto-complete-config)
;; (require 'auto-complete-clang)
;; (ac-config-default)
;; (setq ac-auto-start 2)
;; (setq ac-auto-show-menu 0.6)
;; (setq ac-menu-height 10)
;; (ac-set-trigger-key "TAB")

;; Personal sources.
;; Cheng Tan, 2013.

;; (defun ac-ct-cpp-candidates ()
;;   "Define my c++ ac-sources."
;;   '("vector" "string"))

;; (defvar ac-source-ct-cpp
;;   '((candidates . ac-ct-cpp-candidates)))

;; (add-hook 'c++-mode-hook (lambda ()
;;                            (add-to-list 'ac-sources 'ac-source-ct-cpp)))

;; (add-hook 'c++-mode-hook (lambda () (add-to-list 'ac-sources
;;                            '(ac-source-ct-cpp ac-source-clang))))

;; latex-mode
;; (add-to-list 'ac-modes 'latex-mode)
;; (defun ac-latex-mode-setup ()
;;   "Define ac-sources for my-latex-mode."
;;   (add-to-list 'ac-sources '(ac-source-yasnippet)))
;; (add-hook 'latex-mode-hook 'ac-latex-mode-setup)
;; -----------------------------------------------------------------------------

;; ac-etags
;; (custom-set-variables '(ac-etags-requires 1))

;; (eval-after-load "etags"
;;   '(progn
;;      (ac-etags-setup)))

;; (defun ct/c-mode-common-hook ()
;;   "Define etag sources for ac in c or cpp modes."
;;   (add-to-list 'ac-sources 'ac-source-etags))

;; (add-hook 'c-mode-common-hook 'ct/c-mode-common-hook)
;; (add-hook 'c++-mode-hook 'ct/c-mode-common-hook)
;; (add-hook 'f90-mode-hook 'ct/c-mode-common-hook)

;; =============================================================================

;; emms mode settings ===================================================
;;   ___ _ __ ___  _ __ ___  ___
;;  / _ \ '_ ` _ \| '_ ` _ \/ __|
;; |  __/ | | | | | | | | | \__ \
;;  \___|_| |_| |_|_| |_| |_|___/
;;
(require 'emms-setup)
(emms-all)
(require 'emms-i18n)
(require 'emms-history)

;; (emms-default-players)
(setq emms-player-list
      '(emms-player-mplayer
        emms-player-mpg321
        emms-player-ogg123))

(setq emms-playlist-buffer-name "*Music*")

(add-hook 'emms-player-started-hook 'emms-show)
(setq emms-show-format "Now Playing: %s")
(setq emms-source-file-default-directory "~/Music/")

;; emms-playlist mode keys map
(global-set-key (kbd "C-c m s") 'emms-stop)
(global-set-key (kbd "C-c m P") 'emms-pause)
(global-set-key (kbd "C-c m n") 'emms-next)
(global-set-key (kbd "C-c m p") 'emms-previous)
(global-set-key (kbd "C-c m f") 'emms-show)
(global-set-key (kbd "C-c m >") 'emms-seek-forward)
(global-set-key (kbd "C-c m <") 'emms-seek-backward)

(global-set-key (kbd "C-c m S") 'emms-start)
(global-set-key (kbd "C-c m g") 'emms-playlist-mode-go)
(global-set-key (kbd "C-c m d") 'emms-play-directory-tree)
(global-set-key (kbd "C-c m h") 'emms-shuffle)
(global-set-key (kbd "C-c m e") 'emms-play-file)
(global-set-key (kbd "C-c m l") 'emms-play-playlist)
(global-set-key (kbd "C-c m r") 'emms-toggle-repeat-track)
(global-set-key (kbd "C-c m R") 'emms-toggle-repeat-playlist)

(add-hook 'emms-playlist-mode-hook
          (lambda ()
            (toggle-truncate-lines 1)))
;; =============================================================================


;; hide-show settings ==========================================================
;;  _     _     _            _
;; | |__ (_) __| | ___   ___| |__   _____      __
;; | '_ \| |/ _` |/ _ \ / __| '_ \ / _ \ \ /\ / /
;; | | | | | (_| |  __/ \__ \ | | | (_) \ V  V /
;; |_| |_|_|\__,_|\___| |___/_| |_|\___/ \_/\_/
;;
;; hs-minor-mode ---------------------------------------------------------------
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
(add-hook 'sh-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)

;; hs-org mode -----------------------------------------------------------------
(require 'hideshow-org)
(global-set-key "\C-c@h" 'hs-org/minor-mode)
;; =============================================================================

;; Google translation ==========================================================
;;                          _        _                       _       _
;;   __ _  ___   ___   __ _| | ___  | |_ _ __ __ _ _ __  ___| | __ _| |_ ___
;;  / _` |/ _ \ / _ \ / _` | |/ _ \ | __| '__/ _` | '_ \/ __| |/ _` | __/ _ \
;; | (_| | (_) | (_) | (_| | |  __/ | |_| | | (_| | | | \__ \ | (_| | ||  __/
;;  \__, |\___/ \___/ \__, |_|\___|  \__|_|  \__,_|_| |_|___/_|\__,_|\__\___|
;;  |___/             |___/
;;
(require 'google-translate)
(require 'google-translate-default-ui)
(global-set-key (kbd "C-c x q") 'google-translate-at-point)
(global-set-key (kbd "C-c x e") 'google-translate-query-translate)
(global-set-key (kbd "C-c x w") 'google-translate-at-point-reverse)
(global-set-key (kbd "C-c x s") 'google-translate-smooth-translate)
(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "zh-CN")
;; =============================================================================

;; indent guide ================================================================
;;  _           _            _                 _     _
;; (_)_ __   __| | ___ _ __ | |_    __ _ _   _(_) __| | ___
;; | | '_ \ / _` |/ _ \ '_ \| __|  / _` | | | | |/ _` |/ _ \
;; | | | | | (_| |  __/ | | | |_  | (_| | |_| | | (_| |  __/
;; |_|_| |_|\__,_|\___|_| |_|\__|  \__, |\__,_|_|\__,_|\___|
;;                                 |___/
(require 'indent-guide)
(indent-guide-global-mode)
(set-face-foreground 'indent-guide-face "cyan")
;; (set-face-background 'indent-guide-face "#454945")
;; =============================================================================

;; highlight indentation =======================================================
;;  _     _       _     _ _       _     _
;; | |__ (_) __ _| |__ | (_) __ _| |__ | |_
;; | '_ \| |/ _` | '_ \| | |/ _` | '_ \| __|
;; | | | | | (_| | | | | | | (_| | | | | |_
;; |_| |_|_|\__, |_| |_|_|_|\__, |_| |_|\__|
;;          |___/           |___/
;;  _           _            _        _   _
;; (_)_ __   __| | ___ _ __ | |_ __ _| |_(_) ___  _ __
;; | | '_ \ / _` |/ _ \ '_ \| __/ _` | __| |/ _ \| '_ \
;; | | | | | (_| |  __/ | | | || (_| | |_| | (_) | | | |
;; |_|_| |_|\__,_|\___|_| |_|\__\__,_|\__|_|\___/|_| |_|
;;
(require 'highlight-indentation)
(add-hook 'c-mode-hook 'highlight-indentation-mode)
(add-hook 'c++-mode-hook 'highlight-indentation-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-indentation-mode)
(add-hook 'lisp-mode-hook 'highlight-indentation-mode)
(add-hook 'sh-mode-hook 'highlight-indentation-mode)
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#454945")
;; =============================================================================


;; =============================================================================
;;   __       _     _   _   _     _
;;  / _| ___ | | __| | | |_| |__ (_)___
;; | |_ / _ \| |/ _` | | __| '_ \| / __|
;; |  _| (_) | | (_| | | |_| | | | \__ \
;; |_|  \___/|_|\__,_|  \__|_| |_|_|___/
;;
(require 'fold-this)

;; redefine keys
(defun noinil-fold-this-keys ()
  "Modify keymaps used by `fold-this'."
  (local-set-key (kbd "C-c C-f") 'fold-this-all)
  (local-set-key (kbd "C-c C-F") 'fold-this)
  (local-set-key (kbd "C-c M-f") 'fold-this-unfold-all)
  )

;; add to dired-mode-hook
(add-hook 'c++-mode-hook 'noinil-fold-this-keys)
;;

;; =============================================================================
;;             __                      _                       _
;;   ___ __ _ / _| ___ _ __ ___   ___ | |  _ __ ___   ___   __| | ___
;;  / __/ _` | |_ / _ \ '_ ` _ \ / _ \| | | '_ ` _ \ / _ \ / _` |/ _ \
;; | (_| (_| |  _|  __/ | | | | | (_) | | | | | | | | (_) | (_| |  __/
;;  \___\__,_|_|  \___|_| |_| |_|\___/|_| |_| |_| |_|\___/ \__,_|\___|
(add-to-list 'load-path "~/.eplugins/cafemol-mode/")
(require 'cafemol-mode)
;; =============================================================================


;; =============================================================================
;;                      _            _ _
;;  _ __ ___   ___   __| | ___      | (_)_ __   ___
;; | '_ ` _ \ / _ \ / _` |/ _ \_____| | | '_ \ / _ \
;; | | | | | | (_) | (_| |  __/_____| | | | | |  __/
;; |_| |_| |_|\___/ \__,_|\___|     |_|_|_| |_|\___|
(sml/setup)
(sml/apply-theme 'respectful)
(setq sml/shorten-directory t)
(setq sml/shorten-modes t)
;; ---------- replace list ----------
(add-to-list 'sml/replacer-regexp-list '("^:Doc:noinil/journal/" ":DIARY:") t)
(add-to-list 'sml/replacer-regexp-list '("^:DB/Doc:manuscripts/" ":MANUSCRIPT:") t)
(add-to-list 'sml/replacer-regexp-list '("^:DB/Doc:work_journal/" ":LOG:") t)
;; =============================================================================

;; =============================================================================
;;           _ _ _
;;   ___  __| (_) |_      ___  ___ _ ____   _____ _ __
;;  / _ \/ _` | | __|____/ __|/ _ \ '__\ \ / / _ \ '__|
;; |  __/ (_| | | ||_____\__ \  __/ |   \ V /  __/ |
;;  \___|\__,_|_|\__|    |___/\___|_|    \_/ \___|_|
(require 'edit-server)
(edit-server-start)
;; =============================================================================

;; =============================================================================
;; fixing the org \emsp problem
(defun my-org-clocktable-indent-string (level)
  "To fix the org emsp bug.  LEVEL is level in the table."
  (if (= level 1)
      ""
    (let ((str "|"))
      (while (> level 2)
        (setq level (1- level)
              str (concat str "~~")))
      (concat str "~> "))))

(advice-add 'org-clocktable-indent-string :override #'my-org-clocktable-indent-string)
;; =============================================================================

;; =============================================================================
;;    _      _          _ _
;;   (_) ___| | ___   _| | |
;;   | |/ _ \ |/ / | | | | |
;;   | |  __/   <| |_| | | |
;;  _/ |\___|_|\_\\__, |_|_|
;; |__/           |___/
(require 'jekyll-modes)
;; =============================================================================


;; =============================================================================
;;         __ _                    _ _
;;   __ _ / _| |_ ___ _ __    __ _| | |
;;  / _` | |_| __/ _ \ '__|  / _` | | |
;; | (_| |  _| ||  __/ |    | (_| | | |
;;  \__,_|_|  \__\___|_|     \__,_|_|_|
;;
;; associate files with modes ==================================================
(add-to-list 'auto-mode-alist '("\\.pdb\\'" . text-mode))
(add-to-list 'auto-mode-alist '("\\.pdb\\'" . ruler-mode))
(add-to-list 'auto-mode-alist '("\\.gp\\'" . gnuplot-mode))
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . hexl-mode))
;; mode-hook ===================================================================
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
;; =============================================================================

;;; noinil.el ends here
