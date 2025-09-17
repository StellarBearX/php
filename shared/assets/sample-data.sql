-- ข้อมูลตัวอย่างสำหรับโปรเจคฝึกฝน
-- ใช้สำหรับทดสอบและเรียนรู้

USE training_project;

-- ข้อมูลตัวอย่างผู้ใช้
INSERT INTO users (username, email, password, first_name, last_name, role) VALUES
('john_doe', 'john@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'John', 'Doe', 'user'),
('jane_smith', 'jane@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jane', 'Smith', 'user'),
('bob_wilson', 'bob@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bob', 'Wilson', 'user');

-- ข้อมูลตัวอย่างบทความ
INSERT INTO posts (title, slug, content, excerpt, author_id, category_id, status, published_at) VALUES
('เรียนรู้ HTML พื้นฐาน', 'learn-html-basics', '<h1>HTML คืออะไร?</h1><p>HTML เป็นภาษาที่ใช้สร้างโครงสร้างของหน้าเว็บ...</p>', 'เรียนรู้พื้นฐานของ HTML สำหรับผู้เริ่มต้น', 1, 1, 'published', NOW()),
('CSS Layout Techniques', 'css-layout-techniques', '<h1>เทคนิคการจัด Layout</h1><p>เรียนรู้ Flexbox และ Grid...</p>', 'เทคนิคการจัด Layout ด้วย CSS', 1, 2, 'published', NOW()),
('Bootstrap Components', 'bootstrap-components', '<h1>Components ของ Bootstrap</h1><p>เรียนรู้การใช้งาน Components...</p>', 'แนะนำ Components ต่างๆ ของ Bootstrap', 2, 3, 'published', NOW());

-- ข้อมูลตัวอย่างสินค้า
INSERT INTO products (name, slug, description, price, category_id, status) VALUES
('iPhone 15 Pro', 'iphone-15-pro', 'สมาร์ทโฟนรุ่นล่าสุดจาก Apple', 39900.00, 1, 'published'),
('MacBook Air M2', 'macbook-air-m2', 'แล็ปท็อปสำหรับงานทั่วไป', 35900.00, 2, 'published'),
('AirPods Pro', 'airpods-pro', 'หูฟังไร้สายคุณภาพสูง', 8900.00, 3, 'published');
