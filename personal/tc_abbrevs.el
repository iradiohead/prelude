;;; package --- Summary
;;; noinil@gmail.com my abbreviations

;;; commentary:

;;; code:

(define-abbrev-table 'global-abbrev-table
  '(
    ;; personal abbrevs ========================================================
    ;;                                        _
    ;;  _ __   ___ _ __ ___  ___  _ __   __ _| |
    ;; | '_ \ / _ \ '__/ __|/ _ \| '_ \ / _` | |
    ;; | |_) |  __/ |  \__ \ (_) | | | | (_| | |
    ;; | .__/ \___|_|  |___/\___/|_| |_|\__,_|_|
    ;; |_|

    ;; email
    ("2me" "noinil@gmail.com")

    ;; signature
    ("2ct" "Cheng Tan")
    ;; =========================================================================


    ;; computing tech ==========================================================
    ;;   ____   ____
    ;;  / ___| / ___|
    ;; | |     \___ \
    ;; | |___   ___) |
    ;;  \____| |____/
    ;;
    ;; computing
    ("3g" "Google")
    ("3wp" "Wikipedia")

    ;; url
    ("3uct" "http://oinil.blogspot.com/")
    ("3uctb" "http://oinil.wordpress.com/")
    ;; =========================================================================

    ;; normal english ==========================================================
    ;;                                   _                    _ _     _
    ;;  _ __   ___  _ __ _ __ ___   __ _| |   ___ _ __   __ _| (_)___| |__
    ;; | '_ \ / _ \| '__| '_ ` _ \ / _` | |  / _ \ '_ \ / _` | | / __| '_ \
    ;; | | | | (_) | |  | | | | | | (_| | | |  __/ | | | (_| | | \__ \ | | |
    ;; |_| |_|\___/|_|  |_| |_| |_|\__,_|_|  \___|_| |_|\__, |_|_|___/_| |_|
    ;;                                                  |___/
    ;;
    ("4alt" "alternative")
    ("4char" "character")
    ("4def" "definition")
    ("4bg" "background")
    ("4kb" "keyboard")
    ("4ex" "example")
    ("4kbd" "keybinding")
    ("4env" "environment")
    ("4var" "variable")
    ("4ev" "environment variable")
    ("4cp" "computer")
    ;; =========================================================================

    ;; work ====================================================================
    ;; __        _____  ____  _  __
    ;; \ \      / / _ \|  _ \| |/ /
    ;;  \ \ /\ / / | | | |_) | ' /
    ;;   \ V  V /| |_| |  _ <| . \
    ;;    \_/\_/  \___/|_| \_\_|\_\
    ;;
    ;; math/unicode symbols
    ("6in" "∈")
    ("6nin" "∉")
    ("6inf" "∞")
    ("6luv" "♥")
    ("6smly" "☺")

    ;; biophysics
    ("6mtd" "metadynamics")
    ;; =========================================================================

    ;; emacs regex =============================================================
    ;;
    ;;   ___ _ __ ___   __ _  ___ ___
    ;;  / _ \ '_ ` _ \ / _` |/ __/ __|
    ;; |  __/ | | | | | (_| | (__\__ \
    ;;  \___|_| |_| |_|\__,_|\___|___/
    ;;
    ("7d" "\\([0-9]+?\\)")
    ("7str" "\\([^\"]+?\\)\"")
    ;; =========================================================================
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;;; tc_abbrevs.el ends here
