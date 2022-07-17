CREATE TABLE users (
    id CHAR(36) NOT NULL,
    currency VARCHAR(4) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users_categories (
    id CHAR(36) NOT NULL,
    name VARCHAR(128) NOT NULL,
    user_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES (users.id)
);

CREATE TABLE users_categories_allocations (
    id CHAR(36) NOT NULL,
    amount DECIMAL NOT NULL,
    timestamp DATETIME NOT NULL,
    user_id CHAR(36) NOT NULL,
    category_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES (users.id),
    FOREIGN KEY (category_id) REFERENCES (budgets_categories.id)
);

CREATE TABLE users_categories_expenses (
    id CHAR(36) NOT NULL,
    amount DECIMAL NOT NULL,
    note VARCHAR(128) NOT NULL,
    timestamp DATETIME NOT NULL,
    user_id CHAR(36) NOT NULL,
    category_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES (users.id),
    FOREIGN KEY (category_id) REFERENCES (budgets_categories.id)
);