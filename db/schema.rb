# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130502194353) do

  create_table "alchemy_attachments", :force => true do |t|
    t.string   "name"
    t.string   "filename"
    t.string   "content_type"
    t.integer  "size"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "cached_tag_list"
  end

  create_table "alchemy_cells", :force => true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "alchemy_contents", :force => true do |t|
    t.string   "name"
    t.string   "essence_type"
    t.integer  "essence_id"
    t.integer  "element_id"
    t.integer  "position"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  add_index "alchemy_contents", ["element_id", "position"], :name => "index_contents_on_element_id_and_position"

  create_table "alchemy_elements", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.integer  "page_id"
    t.boolean  "public",          :default => true
    t.boolean  "folded",          :default => false
    t.boolean  "unique",          :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.integer  "cell_id"
    t.text     "cached_tag_list"
  end

  add_index "alchemy_elements", ["page_id", "position"], :name => "index_elements_on_page_id_and_position"

  create_table "alchemy_elements_alchemy_pages", :id => false, :force => true do |t|
    t.integer "element_id"
    t.integer "page_id"
  end

  create_table "alchemy_essence_booleans", :force => true do |t|
    t.boolean  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  add_index "alchemy_essence_booleans", ["value"], :name => "index_alchemy_essence_booleans_on_value"

  create_table "alchemy_essence_dates", :force => true do |t|
    t.datetime "date"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "alchemy_essence_files", :force => true do |t|
    t.integer  "attachment_id"
    t.string   "title"
    t.string   "css_class"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "alchemy_essence_htmls", :force => true do |t|
    t.text     "source"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "alchemy_essence_links", :force => true do |t|
    t.string   "link"
    t.string   "link_title"
    t.string   "link_target"
    t.string   "link_class_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  create_table "alchemy_essence_pictures", :force => true do |t|
    t.integer  "picture_id"
    t.string   "caption"
    t.string   "title"
    t.string   "alt_tag"
    t.string   "link"
    t.string   "link_class_name"
    t.string   "link_title"
    t.string   "css_class"
    t.string   "link_target"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "crop_from"
    t.string   "crop_size"
    t.string   "render_size"
  end

  create_table "alchemy_essence_richtexts", :force => true do |t|
    t.text     "body"
    t.text     "stripped_body"
    t.boolean  "do_not_index",  :default => false
    t.boolean  "public"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "alchemy_essence_selects", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  add_index "alchemy_essence_selects", ["value"], :name => "index_alchemy_essence_selects_on_value"

  create_table "alchemy_essence_texts", :force => true do |t|
    t.text     "body"
    t.string   "link"
    t.string   "link_title"
    t.string   "link_class_name"
    t.boolean  "public",          :default => false
    t.boolean  "do_not_index",    :default => false
    t.string   "link_target"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "alchemy_folded_pages", :force => true do |t|
    t.integer "page_id"
    t.integer "user_id"
    t.boolean "folded",  :default => false
  end

  create_table "alchemy_languages", :force => true do |t|
    t.string   "name"
    t.string   "language_code"
    t.string   "frontpage_name"
    t.string   "page_layout",    :default => "intro"
    t.boolean  "public",         :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.boolean  "default",        :default => false
    t.string   "country_code",   :default => "",      :null => false
    t.integer  "site_id"
  end

  add_index "alchemy_languages", ["language_code", "country_code"], :name => "index_alchemy_languages_on_language_code_and_country_code"
  add_index "alchemy_languages", ["language_code"], :name => "index_alchemy_languages_on_language_code"
  add_index "alchemy_languages", ["site_id"], :name => "index_alchemy_languages_on_site_id"

  create_table "alchemy_legacy_page_urls", :force => true do |t|
    t.string   "urlname",    :null => false
    t.integer  "page_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "alchemy_legacy_page_urls", ["urlname"], :name => "index_alchemy_legacy_page_urls_on_urlname"

  create_table "alchemy_pages", :force => true do |t|
    t.string   "name"
    t.string   "urlname"
    t.string   "title"
    t.string   "language_code"
    t.boolean  "language_root"
    t.string   "page_layout"
    t.text     "meta_keywords"
    t.text     "meta_description"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "parent_id"
    t.integer  "depth"
    t.boolean  "visible",          :default => false
    t.boolean  "public",           :default => false
    t.boolean  "locked",           :default => false
    t.integer  "locked_by"
    t.boolean  "restricted",       :default => false
    t.boolean  "robot_index",      :default => true
    t.boolean  "robot_follow",     :default => true
    t.boolean  "sitemap",          :default => true
    t.boolean  "layoutpage",       :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.integer  "language_id"
    t.text     "cached_tag_list"
  end

  add_index "alchemy_pages", ["language_id"], :name => "index_pages_on_language_id"
  add_index "alchemy_pages", ["parent_id", "lft"], :name => "index_pages_on_parent_id_and_lft"
  add_index "alchemy_pages", ["urlname"], :name => "index_pages_on_urlname"

  create_table "alchemy_pictures", :force => true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.integer  "image_file_width"
    t.integer  "image_file_height"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.string   "upload_hash"
    t.text     "cached_tag_list"
    t.string   "image_file_uid"
    t.integer  "image_file_size"
  end

  create_table "alchemy_sites", :force => true do |t|
    t.string   "host"
    t.string   "name"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.boolean  "public",                   :default => false
    t.text     "aliases"
    t.boolean  "redirect_to_primary_host"
  end

  add_index "alchemy_sites", ["host", "public"], :name => "alchemy_sites_public_hosts_idx"
  add_index "alchemy_sites", ["host"], :name => "index_alchemy_sites_on_host"

  create_table "alchemy_users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "login"
    t.string   "email"
    t.string   "gender"
    t.string   "role",                                  :default => "registered"
    t.string   "language"
    t.string   "encrypted_password",     :limit => 128, :default => "",           :null => false
    t.string   "password_salt",          :limit => 128, :default => "",           :null => false
    t.integer  "sign_in_count",                         :default => 0,            :null => false
    t.integer  "failed_attempts",                       :default => 0,            :null => false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.text     "cached_tag_list"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
  end

  add_index "alchemy_users", ["email"], :name => "index_alchemy_users_on_email", :unique => true
  add_index "alchemy_users", ["login"], :name => "index_alchemy_users_on_login", :unique => true
  add_index "alchemy_users", ["reset_password_token"], :name => "index_alchemy_users_on_reset_password_token", :unique => true

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "hidden_name"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text     "description"
    t.decimal  "entrance_fee", :precision => 6, :scale => 2
    t.boolean  "published"
    t.integer  "location_id"
    t.integer  "organizer_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "refinery_blog_categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "cached_slug"
    t.string   "slug"
  end

  add_index "refinery_blog_categories", ["id"], :name => "index_refinery_blog_categories_on_id"
  add_index "refinery_blog_categories", ["slug"], :name => "index_refinery_blog_categories_on_slug"

  create_table "refinery_blog_categories_blog_posts", :force => true do |t|
    t.integer "blog_category_id"
    t.integer "blog_post_id"
  end

  add_index "refinery_blog_categories_blog_posts", ["blog_category_id", "blog_post_id"], :name => "index_blog_categories_blog_posts_on_bc_and_bp"

  create_table "refinery_blog_comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.boolean  "spam"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "state"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "refinery_blog_comments", ["id"], :name => "index_refinery_blog_comments_on_id"

  create_table "refinery_blog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "user_id"
    t.string   "cached_slug"
    t.string   "custom_url"
    t.text     "custom_teaser"
    t.string   "source_url"
    t.string   "source_url_title"
    t.integer  "access_count",     :default => 0
    t.string   "slug"
  end

  add_index "refinery_blog_posts", ["access_count"], :name => "index_refinery_blog_posts_on_access_count"
  add_index "refinery_blog_posts", ["id"], :name => "index_refinery_blog_posts_on_id"
  add_index "refinery_blog_posts", ["slug"], :name => "index_refinery_blog_posts_on_slug"

  create_table "refinery_calendar_events", :force => true do |t|
    t.string   "title"
    t.date     "from"
    t.date     "to"
    t.string   "registration_link"
    t.string   "excerpt"
    t.text     "description"
    t.integer  "position"
    t.boolean  "featured"
    t.string   "slug"
    t.integer  "venue_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "refinery_calendar_venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.string   "phone"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_image_page_translations", :force => true do |t|
    t.integer  "refinery_image_page_id"
    t.string   "locale"
    t.text     "caption"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_image_page_translations", ["locale"], :name => "index_refinery_image_page_translations_on_locale"
  add_index "refinery_image_page_translations", ["refinery_image_page_id"], :name => "index_186c9a170a0ab319c675aa80880ce155d8f47244"

  create_table "refinery_image_pages", :force => true do |t|
    t.integer "image_id"
    t.integer "page_id"
    t.integer "position"
    t.text    "caption"
    t.string  "page_type", :default => "page"
  end

  add_index "refinery_image_pages", ["image_id"], :name => "index_refinery_image_pages_on_image_id"
  add_index "refinery_image_pages", ["page_id"], :name => "index_refinery_image_pages_on_page_id"

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_mailchimp_campaigns", :force => true do |t|
    t.string   "subject"
    t.string   "mailchimp_campaign_id"
    t.string   "mailchimp_list_id"
    t.string   "mailchimp_template_id"
    t.string   "from_email"
    t.string   "from_name"
    t.text     "body"
    t.datetime "sent_at"
    t.datetime "scheduled_at"
    t.boolean  "auto_tweet",            :default => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "refinery_mailchimp_campaigns", ["id"], :name => "index_refinery_mailchimp_campaigns_on_id"

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_refinery_page_part_translations_on_refinery_page_part_id"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_refinery_page_translations_on_refinery_page_id"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     :default => true
    t.string   "scoping"
    t.boolean  "restricted",      :default => false
    t.string   "form_value_type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "refinery_video_files", :force => true do |t|
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_ext"
    t.string   "file_uid"
    t.string   "file_mime_type"
    t.integer  "video_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "external_url"
    t.boolean  "use_external"
  end

  create_table "refinery_videos", :force => true do |t|
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "config"
    t.string   "title"
    t.integer  "poster_id"
    t.boolean  "use_shared"
    t.text     "embed_tag"
  end

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
