CREATE TABLE budgets (
    id CHAR(36) NOT NULL,
    currency VARCHAR(8) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE budgets_categories (
    id CHAR(36) NOT NULL,
    name VARCHAR(128) NOT NULL,
    budget_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (budget_id) REFERENCES (budgets.id)
);

CREATE TABLE budgets_categories_allocations (
    id CHAR(36) NOT NULL,
    amount DECIMAL(65, 2) NOT NULL,
    timestamp DATETIME NOT NULL,
    budget_id CHAR(36) NOT NULL,
    category_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (budget_id) REFERENCES (budgets.id),
    FOREIGN KEY (category_id) REFERENCES (budgets_categories.id)
);

CREATE TABLE budgets_categories_expenses (
    id CHAR(36) NOT NULL,
    amount DECIMAL(65, 2) NOT NULL,
    note VARCHAR(128) NOT NULL,
    timestamp DATETIME NOT NULL,
    budget_id CHAR(36) NOT NULL,
    category_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (budget_id) REFERENCES (budgets.id),
    FOREIGN KEY (category_id) REFERENCES (budgets_categories.id)
);

CREATE TABLE users (
    id CHAR(36) NOT NULL,
    budget_id CHAR(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (budget_id) REFERENCES (budgets.id)
);