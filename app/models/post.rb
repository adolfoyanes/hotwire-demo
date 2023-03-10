class Post < ApplicationRecord
    after_save_commit { broadcast_prepend_to "posts"}
    after_update_commit { broadcast_replace_to "posts"}
    after_destroy_commit { broadcast_remove_to "posts"}

    validates :title, presence: true
end
