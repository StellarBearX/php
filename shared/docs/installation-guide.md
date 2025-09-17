# 📋 คู่มือการติดตั้งและใช้งาน

## 🚀 การติดตั้งโปรเจค

### ข้อกำหนดระบบ
- **Web Server:** Apache หรือ Nginx
- **PHP:** เวอร์ชัน 7.4 หรือใหม่กว่า
- **MySQL:** เวอร์ชัน 5.7 หรือใหม่กว่า
- **Browser:** Chrome, Firefox, Safari, Edge (เวอร์ชันล่าสุด)

### ขั้นตอนการติดตั้ง

#### 1. ติดตั้ง XAMPP (แนะนำสำหรับผู้เริ่มต้น)
```bash
# ดาวน์โหลด XAMPP จาก https://www.apachefriends.org/
# ติดตั้งตามขั้นตอนปกติ
# เปิด XAMPP Control Panel
# เริ่ม Apache และ MySQL
```

#### 2. ติดตั้งโปรเจค
```bash
# คัดลอกโปรเจคไปยัง htdocs (XAMPP) หรือ web root
cp -r /path/to/project /xampp/htdocs/php-training

# หรือใช้ Git Clone
git clone [repository-url] /xampp/htdocs/php-training
```

#### 3. สร้างฐานข้อมูล
```sql
-- เปิด phpMyAdmin (http://localhost/phpmyadmin)
-- สร้างฐานข้อมูลใหม่ชื่อ 'training_project'
-- Import ไฟล์ database.sql
```

#### 4. ตั้งค่าการเชื่อมต่อฐานข้อมูล
```php
// แก้ไขไฟล์ backend/php/config.php
define('DB_HOST', 'localhost');
define('DB_NAME', 'training_project');
define('DB_USER', 'root');
define('DB_PASS', ''); // ใส่รหัสผ่าน MySQL ถ้ามี
```

#### 5. ตั้งค่า Permissions
```bash
# สร้างโฟลเดอร์สำหรับอัปโหลดไฟล์
mkdir -p shared/assets/uploads
chmod 755 shared/assets/uploads

# สร้างโฟลเดอร์สำหรับ logs
mkdir -p backend/logs
chmod 755 backend/logs
```

## 🌐 การเข้าถึงเว็บไซต์

### Frontend
- **URL:** http://localhost/php-training/frontend/
- **บทเรียน:** http://localhost/php-training/frontend/day1-2/lesson-1.html

### Backend API
- **Base URL:** http://localhost/php-training/backend/api/
- **Auth API:** http://localhost/php-training/backend/api/?path=auth
- **Posts API:** http://localhost/php-training/backend/api/?path=posts

## 📁 โครงสร้างโปรเจค

```
php-training/
├── frontend/                 # ไฟล์ Frontend
│   ├── day1-2/              # บทเรียน HTML
│   ├── day3-4/              # บทเรียน CSS
│   ├── day5-6/              # บทเรียน Bootstrap
│   ├── day7-8/              # Advanced CSS
│   ├── day9-10/             # Integration
│   └── final-project/       # โปรเจคสุดท้าย
├── backend/                 # ไฟล์ Backend
│   ├── php/                 # PHP Files
│   ├── sql/                 # Database Files
│   └── api/                 # API Endpoints
├── shared/                  # ไฟล์ที่ใช้ร่วมกัน
│   ├── assets/              # Images, Icons
│   └── docs/                # Documentation
└── README.md                # ข้อมูลโปรเจค
```

## 🔧 การพัฒนา

### Frontend Development
```bash
# เปิดไฟล์ HTML ในเบราว์เซอร์
# ใช้ Live Server Extension ใน VS Code
# หรือใช้ Python Simple Server
python -m http.server 8000
```

### Backend Development
```bash
# ใช้ XAMPP หรือ
# ใช้ PHP Built-in Server
php -S localhost:8000 -t backend/
```

### Database Management
```bash
# ใช้ phpMyAdmin
http://localhost/phpmyadmin

# หรือใช้ MySQL Command Line
mysql -u root -p
use training_project;
```

## 🧪 การทดสอบ

### ทดสอบ Frontend
1. เปิดไฟล์ HTML ในเบราว์เซอร์
2. ตรวจสอบ Responsive Design
3. ทดสอบ JavaScript Functions
4. ตรวจสอบ Console สำหรับ Errors

### ทดสอบ Backend API
```bash
# ใช้ Postman หรือ curl
curl -X GET "http://localhost/php-training/backend/api/?path=posts&action=list"

# ทดสอบ POST Request
curl -X POST "http://localhost/php-training/backend/api/?path=auth" \
  -H "Content-Type: application/json" \
  -d '{"action":"login","username":"admin","password":"password"}'
```

## 🐛 การแก้ไขปัญหา

### ปัญหาที่พบบ่อย

#### 1. ไม่สามารถเชื่อมต่อฐานข้อมูลได้
```php
// ตรวจสอบการตั้งค่าใน config.php
// ตรวจสอบว่า MySQL ทำงานอยู่
// ตรวจสอบ username และ password
```

#### 2. ไฟล์ไม่แสดงผล
```bash
# ตรวจสอบ path ของไฟล์
# ตรวจสอบ permissions
# ตรวจสอบ web server configuration
```

#### 3. API ไม่ทำงาน
```php
// ตรวจสอบ error logs
// ตรวจสอบ CORS settings
// ตรวจสอบ JSON format
```

#### 4. JavaScript ไม่ทำงาน
```javascript
// ตรวจสอบ Console ใน Browser DevTools
// ตรวจสอบ path ของไฟล์ JavaScript
// ตรวจสอบ syntax errors
```

## 📚 ทรัพยากรเพิ่มเติม

### Documentation
- [HTML Reference](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [Bootstrap Documentation](https://getbootstrap.com/docs/)
- [PHP Documentation](https://www.php.net/docs.php)
- [MySQL Documentation](https://dev.mysql.com/doc/)

### Tools
- [VS Code](https://code.visualstudio.com/) - Code Editor
- [Postman](https://www.postman.com/) - API Testing
- [Figma](https://www.figma.com/) - UI/UX Design
- [Git](https://git-scm.com/) - Version Control

### Learning Resources
- [W3Schools](https://www.w3schools.com/) - Web Development Tutorials
- [MDN Web Docs](https://developer.mozilla.org/) - Web Technologies
- [Bootstrap Examples](https://getbootstrap.com/docs/examples/)
- [PHP Tutorial](https://www.w3schools.com/php/)

## 🤝 การขอความช่วยเหลือ

### เมื่อติดปัญหา
1. ตรวจสอบ Error Logs
2. ใช้ Browser DevTools
3. ตรวจสอบ Network Tab
4. ใช้ Console สำหรับ Debug
5. ดู Documentation

### การติดต่อ
- สร้าง Issue ใน Repository
- ถามใน Forum หรือ Community
- ปรึกษาเพื่อนร่วมทีม
- ดูตัวอย่าง Code ในบทเรียน

## 🎯 เคล็ดลับการพัฒนา

### Frontend
- ใช้ Browser DevTools เป็นประจำ
- ทดสอบในหลาย Browser
- ใช้ CSS Grid และ Flexbox
- เขียน Code ที่อ่านง่าย
- ใช้ Comments อธิบาย Code

### Backend
- ใช้ Prepared Statements
- Validate ข้อมูลเสมอ
- ใช้ Error Handling
- เขียน API Documentation
- ทดสอบ API ด้วย Postman

### ทีม
- สื่อสารกันเป็นประจำ
- แบ่งงานให้ชัดเจน
- ใช้ Git สำหรับ Version Control
- ทดสอบร่วมกัน
- ช่วยเหลือกันเมื่อติดปัญหา

---

**หมายเหตุ:** คู่มือนี้จะอัปเดตตามการพัฒนาของโปรเจค หากมีคำถามหรือข้อเสนอแนะ กรุณาแจ้งให้ทราบ
