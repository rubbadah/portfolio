-- DROP TABLE skill_categories;
-- テーブルの初期化
DELETE FROM work_processes;
DELETE FROM work_technologies;
DELETE FROM project_technologies;
DELETE FROM works;
DELETE FROM projects;
DELETE FROM skills;
DELETE FROM technologies;
DELETE FROM technology_categories;
DELETE FROM levels;
DELETE FROM background_events;
DELETE FROM background_eras;
DELETE FROM profiles;
DELETE FROM processes;
DELETE FROM skill_categories;
-- スキルレベル
INSERT INTO levels (
        id,
        level,
        description,
        "order",
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        1,
        '授業の座学程度',
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        2,
        '触れたことがある（実務未経験）',
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        3,
        '実務1年未満',
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        4,
        '実務1～3年',
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        5,
        '実務3年以上、或いはプライベートでよく使う',
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 技術カテゴリ
INSERT INTO technology_categories (
        id,
        name,
        description,
        "order",
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        '言語',
        'プログラミング言語',
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        'フレームワーク',
        'フレームワーク',
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'データベース',
        'データベース',
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        'ツール',
        '開発ツール',
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 技術
INSERT INTO technologies (
        id,
        name,
        category_id,
        description,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES -- フロントエンド技術
    (
        1,
        'JavaScript',
        1,
        'JavaScript言語',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        'HTML',
        1,
        'HTML',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'CSS',
        1,
        'CSS',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        'React',
        2,
        'Reactフレームワーク',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- バックエンド技術
    (
        5,
        'Python',
        1,
        'Python言語',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        'Java',
        1,
        'Java言語',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        'Django',
        2,
        'Djangoフレームワーク',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        'Flask',
        2,
        'Flaskフレームワーク',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- DB技術
    (
        9,
        'MySQL',
        3,
        'MySQLデータベース',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        'PostgreSQL',
        3,
        'PostgreSQLデータベース',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- スキルカゴリ
INSERT INTO skill_categories (
        id,
        code,
        name,
        description,
        "order",
        background_color,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        'front',
        'フロントエンド',
        'フロントエンド関連技術',
        1,
        'rgba(173, 216, 230, 0.7)',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        'back',
        'バックエンド',
        'バックエンド関連技術',
        2,
        'rgba(255, 160, 122, 0.7)',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'db',
        'データベース',
        'データベース関連技術',
        3,
        'rgba(144, 238, 144, 0.7)',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- スキル（技術とレベルの紐付け）
INSERT INTO skills (
        id,
        technology_id,
        level_id,
        category_id,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES -- フロントエンド
    (
        1,
        1,
        4,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        2,
        4,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        3,
        4,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        4,
        3,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- バックエンド
    (
        5,
        5,
        5,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        6,
        4,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        7,
        4,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        8,
        3,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- DB
    (
        9,
        9,
        4,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        10,
        3,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 工程マスタ
INSERT INTO processes (
        id,
        name,
        "order",
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        '要件定義',
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        '基本設計',
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        '詳細設計',
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        '実装',
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        'テスト',
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 業務経歴
INSERT INTO works (
        id,
        title,
        start_period,
        end_period,
        description,
        is_pickup,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        'ECサイト開発',
        '2019/04',
        '2020/03',
        'ECサイトのフロントエンド・バックエンド開発',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        '業務システム開発',
        '2020/04',
        '2021/03',
        '社内業務システムの開発',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'システム保守',
        '2021/04',
        '2022/03',
        '既存システムの保守・運用',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 業務と工程の紐付け
INSERT INTO work_processes (
        id,
        work_id,
        process_id,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        1,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        1,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        1,
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        2,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        2,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        2,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        2,
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        2,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        9,
        3,
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        3,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 業務と使用技術の紐付け
INSERT INTO work_technologies (
        id,
        work_id,
        technology_id,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        1,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        1,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        1,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        1,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        1,
        9,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        2,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        2,
        7,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        2,
        10,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        9,
        3,
        6,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        3,
        9,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- プロフィール情報
INSERT INTO profiles (
        id,
        name,
        image_path,
        description,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        '名前',
        '/static/images/profile.jpg',
        '岐阜県出身のエンジニア。中学校卒業と同時に15歳でIT企業に入社。プログラマとして開発系の業務に従事。ECサイトや業務システム、フロントエンドからバックエンド、基本設計から実装・テスト等を経験。18歳で情報工学系の大学に入学し、AIを専攻して学んでいる。趣味は革で財布や鞄を作ること。',
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 生い立ち（時代区分）
INSERT INTO background_eras (
        id,
        title,
        start_period,
        end_period,
        description,
        "order",
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        '小学生時代',
        2010,
        2015,
        NULL,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        '中学生時代',
        2016,
        2018,
        'Pythonの入門書を基に独学。',
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'SES時代',
        2019,
        2022,
        'SES企業とはいえ、年齢も年齢のため、社内持ち帰りの案件が主であった。社外常駐した経験は2社程度。基本設計～実装、各種テストを経験。',
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        '大学生時代',
        2022,
        2024,
        NULL,
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- 生い立ち（イベント）
INSERT INTO background_events (
        id,
        era_id,
        start_period,
        end_period,
        description,
        is_single,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        1,
        2010,
        2010,
        '公立小学校に入学。',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        1,
        2011,
        2011,
        '親の都合によりポーランドのワルシャワに引っ越し。現地の日本人学校に通う。',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        1,
        2014,
        2014,
        '日本に帰ってきて、元の公立小学校に戻る。',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        2,
        2016,
        2016,
        '公立中学校に入学。剣道部に所属し、初段を取得する。',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        3,
        2019,
        2019,
        '15歳でSES企業にプログラマとして入社。（社員登用前提の契約社員）',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        3,
        2020,
        2020,
        '高等学校卒業程度認定試験合格。',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        3,
        2021,
        2021,
        '日々の姿勢が認められ、社員登用の話が上がる。',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        3,
        2022,
        2022,
        '大学入学に伴い、2022年3月31日に退職。',
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        9,
        4,
        2022,
        2022,
        '情報系の私立大学に入学。AI系を専攻して学ぶ。',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        4,
        2023,
        2023,
        '元居たSES企業にてアルバイトを並行して行う。（0.4人月契約）',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        11,
        4,
        2024,
        2024,
        '現在に至る。',
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- プロジェクト
INSERT INTO projects (
        id,
        title,
        description,
        image_path,
        detail_url,
        demo_url,
        github_url,
        start_period,
        end_period,
        "order",
        is_pickup,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES (
        1,
        'ポートフォリオサイト',
        'Python/FastAPIを使用して作成したポートフォリオサイト。',
        '/static/images/portfolio.jpg',
        'https://example.com/portfolio/detail',
        'https://example.com/portfolio',
        'https://github.com/example/portfolio',
        '2024/01',
        '2024/02',
        1,
        TRUE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        'タスク管理アプリ',
        'Reactを使用して作成したタスク管理アプリケーション。',
        '/static/images/task-app.jpg',
        'https://example.com/task-app/detail',
        'https://example.com/task-app',
        'https://github.com/example/task-app',
        '2023/11',
        '2023/12',
        2,
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        'メモ帳アプリ',
        'Python/Djangoを使用して作成したメモ帳アプリケーション。',
        '/static/images/memo-app.jpg',
        'https://example.com/memo-app/detail',
        'https://example.com/memo-app',
        'https://github.com/example/memo-app',
        '2023/09',
        '2023/10',
        3,
        FALSE,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );
-- プロジェクトと使用技術の紐付け
INSERT INTO project_technologies (
        id,
        project_id,
        technology_id,
        apply_start_datetime,
        apply_end_datetime,
        is_deleted,
        created_at,
        updated_at
    )
VALUES -- ポートフォリオサイト
    (
        1,
        1,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        1,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        1,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        1,
        10,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- タスク管理アプリ
    (
        5,
        2,
        1,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        6,
        2,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        7,
        2,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        8,
        2,
        4,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    -- メモ帳アプリ
    (
        9,
        3,
        2,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        10,
        3,
        3,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        11,
        3,
        5,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        12,
        3,
        7,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        13,
        3,
        9,
        '2024-01-01 00:00:00',
        '9000-12-31 23:59:59',
        FALSE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );