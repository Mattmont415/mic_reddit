json.extract! post, :id, :title, :subreddit, :body, :users, :created_at, :updated_at
json.url post_url(post, format: :json)
