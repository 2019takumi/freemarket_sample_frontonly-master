DB
​
## Shipping_originsテーブル
​
|Column|Type|Options|
|------|----|-------|
| last_name | string | null: false |
| first_name | string | null: false |
| last_name_k | string | null:false |
| first_name_k| string | null:false |
| postal_code | integer | null:false |
| prefecture | integer | null:false |
| municipalities | string | null:false |
| address | string | null:false |
| building | string | |
| phone_number | string | |
| user_id | references | null:false foreign_key: true |
​
- belongs_to :user
​
​
## usersテーブル
|Column|Type|Options|
|------|----|-------|
| nickname | string | null:false |
| text | text | |
| like_id | references | null:false, foreign_key:true |
| password | string | null:false |
| phone_number | string | null:false |
| mail | string | null:false |
| credit_card_id | references | null:false, foreign_key:true |
​
- has_many :items, dependent: :destroy
- has_one : shopping_origin, dependent: :destroy
- has_many : likes, dependent: :destroy
- has_one :authentication, dependent: :destroy
- has_one :personal_information, dependent: :destroy
- has_one : credit_card, dependent: :destroy
​
## personal_informationsテーブル
|Column|Type|Options|
|------|----|-------|
| last_name | string | null:false |
| first_name | string | null:false |
| last_name_k | string | null:false |
| first_name_k | string | null:false |
| prefecture | integer | null:false |
| municipalities | string | null:false |
| address | string | null:false |
| building | string | |
| birthday_y | integer | null:false |
| birthday_m | integer | null:false |
| birthday_d | integer | null:false |
​
- belongs_to : user
​
​
## likesテーブル
|Column|Type|Options|
|------|----|-------|
| user_id | references | null:false, foreign_key:true |
| item_id | references | null:false, foreign_key:true |
​
- belongs_to : user
- belongs_to : item
​
​
## credit_cardsテーブル
|Column|Type|Options|
|------|----|-------|
| card_number | integer | null:false |
| expiration_date_m | integer | null:false |
| expiration_date_y | integer | null:false |
| security code | integer | null:false |
| card_company | string | null:false |
​
- belongs_to : user
​
​
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
| name | string | null:false | 
| image_id | references | null:false, foreign_key:true |
| price | integer | null:false |
| text | text | null:false |
| category | references | null:false, foreign_key:true |
| size | integer | null:false |
| brand | references | null:false, foreign_key:true |
| item_status | integer | null:false |
| delivery_fee | integer | null:false |
| area | integer | null:false |
| days | integer | null:false |
| trading_conditions | integer | null:false |
| purchase_date | data | null:false |
| exhibitor | references | null:false, foreign_key:true |
| buyer | references | null:false, foreign_key:true |
​
- belongs_to : user
- has_many : likes
- has_many : images, dependent: :destroy
- belongs_to : categoriey
- belongs_to : brand
​
​
## imagesテーブル
|Column|Type|Options|
|------|----|-------|
| url | string | null:false |
​
- belongs_to : item
​
​
​
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
| name | string | null:false |
​
- belongs_to : item
​
​
​
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
| name | string | null:false |
| path | string | null:false |
​
- belongs_to : item