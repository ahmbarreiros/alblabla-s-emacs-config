


(deftheme albos
  "My personal theme on emacs (i don't like orange so much)"
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'albos

   `(default ((((class color) (min-colors 4096))
	       (:background "#262626" :foreground "#deb887")) ;burlywood
	   (,class
	    (:background "#f5f5dc" :foreground "#262626")))) ;beige
   `(cursor ((,class (:background "#f5f5dc")))) ;beige
   `(fringe ((,class (:background "#f0f8ff"))))
   `(highlight ((,class (:background "#f5f5dc" :foreground "#262626")))) ;beige
   `(region ((,class (:background "#f5f5dc" :foreground "#262626")))) ;beige
   `(isearch ((,class (:background "#ff8c00" :foreground "#262626")))) ;dark orange
   `(lazy-highlight ((,class (:background "#f5f5dc")))) ;beige
   `(trailing-whitespace ((,class (:background "#f5f5dc")))) ;beige

   `(mode-line ((,class (:background "#ffdab9" :foreground "#262626")))) ;Peach puff 2
   `(mode-line-inactive ((,class (:background "#8b7d6b" :foreground "#262626")))) ;Peach puff 1
   `(header-line ((,class (:background "#ff6347" :foreground "#f0f8ff")))) ;tomato
   `(minibuffer-prompt ((,class (:foreground "#f5deb3" :weight bold)))) ;wheat


   `(font-lock-builtin-face((,class (:foreground "#deb887")))) ; burlywood
   `(font-lock-comment-face((,class (:foreground "#8b8989")))) ; snow3
   `(font-lock-constant-face((,class (:foreground "#d2691e")))) ;chocolate
   `(font-lock-function-name-face ((,class (:foreground "#f5deb3" :weight bold)))) ;wheat
     
   `(font-lock-keyword-face ((,class (:foreground "#f4a460" :weight bold)))) ; orange-red
   `(font-lock-string-face ((,class (:foreground "#fa8072")))) ;salmon
   `(font-lock-type-face ((,class (:foreground "#f4a460")))) ;sandy brown
   `(font-lock-variable-name-face ((,class (:foreground "#d2b48c")))) ;tan
   `(font-lock-warning-face ((,class (:foreground "#ffa500" :weight bold)))) ; orange

   `(button ((,class (:underline t))))
   `(link ((,class (:foreground "#f0f8ff" :underline t))))
   `(link-visited ((,class (:foreground "#f0f8ff" :underline t))))
   ))

(provide-theme 'albos)
