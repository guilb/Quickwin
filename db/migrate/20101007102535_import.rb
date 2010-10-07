class Import < ActiveRecord::Migration
  def self.up
      create_table "articles", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "salutation"
    t.string   "name"
    t.string   "lastname"
    t.string   "company"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "gsm"
    t.string   "fax"
    t.string   "subject"
    t.text     "message"
    t.boolean  "callmeback"
    t.boolean  "appointement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", :force => true do |t|
    t.string   "name"
    t.string   "file"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  end

  def self.down
  end
end
