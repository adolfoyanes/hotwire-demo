class Post < ApplicationRecord
    after_save_commit { broadcast_prepend_to "posts"}
end
