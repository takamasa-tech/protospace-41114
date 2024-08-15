# ProtoSpaceのER図

## usersテーブル

| カラム名             | 型         | オプション                |
|----------------------|------------|---------------------------|
| email                | string     | null: false, unique: true |
| encrypted_password   | string     | null: false               |
| name                 | string     | null: false               |
| profile              | text       | null: false               |
| occupation           | text       | null: false               |
| position             | text       | null: false               |
| created_at           | datetime   | null: false               |
| updated_at           | datetime   | null: false               |

### アソシエーション
- has_many :prototypes
- has_many :comments

## prototypesテーブル

| カラム名             | 型         | オプション                |
|----------------------|------------|---------------------------|
| title                | string     | null: false               |
| catch_copy           | text       | null: false               |
| concept              | text       | null: false               |
| user                 | references | null: false, foreign_key: true |
| created_at           | datetime   | null: false               |
| updated_at           | datetime   | null: false               |

### アソシエーション
- belongs_to :user
- has_many :comments

## commentsテーブル

| カラム名             | 型         | オプション                |
|----------------------|------------|---------------------------|
| content              | text       | null: false               |
| prototype            | references | null: false, foreign_key: true |
| user                 | references | null: false, foreign_key: true |
| created_at           | datetime   | null: false               |
| updated_at           | datetime   | null: false               |

### アソシエーション
- belongs_to :user
- belongs_to :prototype
