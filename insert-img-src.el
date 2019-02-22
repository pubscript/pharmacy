(defun zds/insert-image-src (src)
  (interactive "sImage URL: ")
  (insert (format "<img src=\"%s\"/>" src)))

(defun zds/insert-image-src-from-clipboard ()
  (interactive)
  (zds/insert-image-src (substring-no-properties (current-kill 0))))

(define-key org-mode-map (kbd "<f9> i") #'zds/insert-image-src)
(define-key org-mode-map (kbd "<f9> j") #'zds/insert-image-src-from-clipboard)



