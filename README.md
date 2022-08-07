# usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages


## prototypes テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| title       | string     | null: false                    |
| catch_copy  | text       | null: false                    |
| concept     | text       | null: false                    | 

### Association

- belongs_to :title
- belongs_to :user

## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| prototype  | references | null: false, foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user