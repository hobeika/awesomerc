(defun notmuch-show-previous-thread (&optional show next)
  "Move to the previous item in the search results, if any.

If SHOW is non-nil, open the previous item in a show
buffer. Otherwise just highlight the previous item in the search
buffer. If NEXT is non-nil, move to the next item in the
search results instead."
  (interactive "P")
  (let ((parent-buffer notmuch-show-parent-buffer))
    (notmuch-kill-this-buffer)
    (when (buffer-live-p parent-buffer)
      (switch-to-buffer parent-buffer)
      (and (if next
	       (notmuch-search-next-thread)
	     (notmuch-search-previous-thread))
	   show
	   (notmuch-search-show-thread)))))

(defun notmuch-show-previous-thread-show ()
  "Show the previous thread in the search results, if any."
  (interactive)
  (notmuch-show-previous-thread t t))

(defun notmuch-show-archive-message-then-previous-or-previous-thread ()
  "Archive the current message, then show the previous open message in the current thread.

If at the last open message in the current thread, then show previous
thread from search."
  (interactive)
  (notmuch-show-archive-message)
  (unless (notmuch-show-previous-open-message)
    (notmuch-show-previous-thread t)))
