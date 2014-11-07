# -*- coding: utf-8 -*-
class Storage < ActiveRecord::Base
    has_many :items
    validates :title, 
    presence: { message: "入力してください"},
        length: {maximum: 20, message: "長すぎ"}
end
