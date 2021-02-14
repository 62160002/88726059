 CREATE TABLE Artist (
        BandID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        BandName VARCHAR(100) NOT NULL,
        Member INT NOT NULL
        );

    CREATE TABLE Style(
        StyleID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        StyleName VARCHAR(100) NULL
        );
    
    CREATE TABLE Music(
        MusicID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        MusicName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        Lyrics VARCHAR(2000) NOT NULL,
        AlbumID VARCHAR(100) NULL REFERENCES Album(AlbumID),
        SongLenght TIME NOT NULL
        );

    CREATE TABLE Album(
        AlbumID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        AlbumCoverPhoto VARCHAR(100) NOT NULL,
        AlbumName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        ReleaseYear YEAR(4) NOT NULL
        );

    INSERT INTO Artist (BandName, Member)
    VALUES ('Paradox', '4'),
            ('Guns N Roses', '6'),
            ('Safeplanet', '3');

    INSERT INTO Style (StyleName)
    VALUES ('Rock'),
            ('Hard Rock'),
            ('Indie pop');
    
    INSERT INTO Music (MusicName,BandID,StyleID,Lyrics,AlbumID,SongLenght)
    VALUES ('ฤดูร้อน','Paradox','Rock','บ่อยครั้งที่ใจเดินออกไปไม่มองข้างทาง หยดน้ำตาอยู่กับการไม่มีค่า 
ฉันเดินหลงทางอยู่กลางผู้คน ที่สับสนวุ่นวาย
หันไปหาเธอไม่เจอผู้ใด เมื่อเธอมาจากฉันไป
ยืนมองท้องฟ้าไม่เป็นเช่นเคย ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
ยืนมองท้องฟ้าไม่เป็นเช่นเคย ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
หยุดทั้งหัวใจ เดินต่อไปไม่มีแสงดาว โอบกอดน้ำตาโอบกอดหัวใจกับความเศร้า
ฉันเดินหลงทางอยู่กลางผู้คน ที่สับสนวุ่นวาย
หันไปหาเธอไม่เจอผู้ใด เมื่อเธอมาจากฉันไป
ยืนมองท้องฟ้าไม่เป็นเช่นเคย ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
ยืนมองท้องฟ้าไม่เป็นเช่นเคย ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
ยืนมองท้องฟ้า... ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
ยืนมองท้องฟ้า... ฤดูร้อนไม่มีเธอเหมือนก่อนเหมือนเก่าขาดเธอ
บ่อยครั้งที่ใจเปิดออกไปให้ลืมเรื่องราว
ฉากเก่าย้อนมาเปิดออกไปไม่เป็นเช่นเดิม','Summer','00:03:55'),
        ('รุ้ง','Paradox','Rock','มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
หากความรักช่างดูมืดหม่น
หากชีวิตมันเปลี่ยนเป็นสีเทา
อย่ายอมแพ้ก้าวเดินเริ่มไหม่
อยู่กับฝันที่อาจเป็นแสงทอง แสงทองส่องทาง
มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
เส้นทางที่ฉันต้องเดินเลยผ่าน อ้อนวอนให้ฟ้าบันดาลส่องแสงทอง สวยงามสว่าง
และสักวันโลกคงเปลี่ยนสี เป็นเฉดสีที่ใสสว่าง
อาจเกิดทอประกายสาดแสงแห่งรัก สายรุ้งเป็นเส้นทางให้เราก้าวเดิน
มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
มองรุ้งทอแสงทอง ตัดเส้นขอบฟ้า เส้นทางฝันไม่ไกล
ทะยานสู่ฟ้า รุ้งบนฟ้าใหญ่ ฟ้าไกลแสงทองส่อง ฉันคงรู้สึกคล้ายดั่งนกแสงแห่งรัก','On The Rainbow','00:04:46'),
        ('คนบนฟ้า','Paradox','Rock','ในมือของฉันนั้นมีดอกไม้
แต่ฉันไม่รู้จะไปให้ใคร
เพราะว่าฉันไม่มีจุดหมาย
มันไม่มีเธออยู่ตรงนี้
ในมือของฉันนั้นมีความฝัน
แต่ฉันจะฝันไปเพื่ออะไร
ฝันก็ฝันไม่มีความหมาย
มันไม่มีใคร ยังคงเหงา
บทเพลงรัก ยังคงร่ำร้อง
จากคนเหงา คนที่ยังหม่นหมอง
คนที่ยังตามหา ใครจะมาจับจอง
ให้ฉันได้มีความสุข กับวันที่สวยงาม
วันที่ฟ้า เปลี่ยนเป็นสดใส
วันที่รักฉันนั้นมีความหมาย
วันที่เคยเงียบเหงา จะเป็นวันสุดท้าย
หากฉันได้มีเธออยู่ และเดินไปด้วยกัน ก็ขอให้มีจริง
ในมือของฉันนั้นมีความรัก
และฉันก็หวังว่าคงสักวัน
นับถอยหลังเพื่อรอวันนั้น
วันที่มีเธอ อยู่ตรงนี้ข้างกัน
คนที่ฟ้าส่งมาให้ฉัน
คนคนนั้นจะเป็นคนแบบไหน
คนที่เดินตากฝนกันจนวันสุดท้าย
ร้องไห้มีความสุข ใต้เงาพระจันทร์
คนน่ารัก คนที่อ่อนไหว
คอยบอกรัก จุ๊บ จุ๊บ ก่อนนอน
คนที่คอยดึงหู ตอนที่เราแอบมอง
ให้ง้อชอบงอนตุ๊บป่อง จะเป็นเช่นไร
หากคนคนนั้น นั้นมีจริง
โว๊ะโอ เฝ้ารอ โว๊ะโอ เฝ้าคอย
นับวันว่าคนบนฟ้าที่มาจากฝัน จะมีจริงไหม
โว้ โอ โว๊ะโอ เฝ้ารอ โว๊ะโอ ว่าคนที่อยู่บนฟ้า
นับวันเฝ้าคอยคนจากฟ้า จะหล่นมาตอนไหน โอ โอ้
','Daydreamer','00:03:11'),
        ('Sweet Child O Mine','Guns N Roses','Hard Rock',"She's got a smile that it seems to me
Reminds me of childhood memories
Where everything was as fresh as the bright blue sky
Now and then when I see her face
She takes me away to that special place
And if I stare too long, I'd probably break down and cry
Whoa, oh, oh
Sweet child o' mine
Whoa, oh, oh, oh
Sweet love of mine
She's got eyes of the bluest skies
As if they thought of rain
I'd hate to look into those eyes and see an ounce of pain
Her hair reminds me of a warm safe place
Where as a child I'd hide
And pray for the thunder and the rain to quietly pass me by
Whoa, oh, oh
Sweet child o' mine
Whoa whoa, oh, oh, oh
Sweet love of mine
Whoa, yeah
Whoa, oh, oh, oh
Sweet child o' mine
Whoa, oh, whoa, oh
Sweet love of mine
Whoa, oh, oh, oh
Sweet child o' mine
Ooh, yeah
Ooh, sweet love of mine
Where do we go?
Where do we go now?
Where do we go?
Ooh, oh, where do we go?
Where do we go now?
Oh, where do we go now?
Where do we go? (Sweet child)
Where do we go now?
Ay, ay, ay, ay, ay, ay, ay, ay
Where do we go now?
Ah, ah
Where do we go?
Oh, where do we go now?
Oh, where do we go?
Oh, where do we go now?
Where do we go?",'Appetite for Destruction','00:05:56'),
        ('กอดความเจ็บช้ำ','Safeplanet','Indie pop','วให้ตัวเองกอดความเจ็บช้ำ
ที่ฉันต้องเจอกับความผิดหวัง ตลอดมา
ให้น้ำตามันได้รินไหลออกมา
ให้หัวใจกลับมาอีกครั้ง
ทนไม่ไหว ไม่รู้ต้องไปทางใด
นานเท่าไหร่ ฉันถึงจะเข้าใจ
ใจที่ล้า ไม่นานก็คงสลายหายไป
ในสิ่งที่ฉันต้องเจอ ทรมาน
ยังบอกตัวเองว่ามันแค่เมื่อวาน
มองไปก็เหมือนว่าคงไม่มีทาง
ที่ฉันจะเข้าใจ
ให้ตัวเองกอดความเจ็บช้ำ
ที่ฉันต้องเจอกับความผิดหวัง ตลอดมา
ให้น้ำตามันได้รินไหลออกมา
ให้หัวใจกลับมาอีกครั้ง
ทนไม่ไหว นี่ฉันต้องไปทางใด
นานเท่าไร ไม่เห็นจะเข้าใจ
ใจที่หาย ไม่นานก็คงสลายหายไป
ในสิ่งที่ฉันต้องเจอ ทรมาน
ยังบอกตัวเองว่ามันแค่นิทาน
มองไปก็เหมือนว่าคงไม่มีทาง
ที่ฉันจะหลุดพ้น
ให้ตัวเองกอดความเจ็บช้ำ
ที่ฉันต้องเจอกับความผิดหวัง ตลอดมา
ให้น้ำตามันได้รินไหลออกมา
ให้หัวใจกลับมาอีกครั้ง
และฉันต้องอยู่กับสิ่งนั้น
แต่ฉันต้องอยู่กับสิ่งนั้นที่เธอบอก
ถึงแม้ว่ามันจะเจ็บช้ำสักเท่าไร
แต่ฉันยังกอดกับสิ่งนั้นไว้ตลอด
ถึงแม้ว่ามันต้องปวดร้าว คงผ่านไปสักวัน','Safeboys','00:04:06');


    INSERT INTO Album (AlbumCoverPhoto,AlbumName,BandID,StyleID,ReleaseYear)
    VALUES ('Paradox - Summer','Summer','Paradox','Rock','2000'),
            ('Paradox - On The Rainbow','On The Rainbow','Musketeers','Rock','2002'),
            ('Paradox - Daydreamer','Daydreamer','Musketeers','Paradox','2011'),
            ('Guns N Roses - Appetite for Destruction','Appetite for Destruction','Guns N Roses','Hard Rock','1987'),
            ('Safeplanet - Safeboys','Safeboys','Safeplanet','Indie pop','2019');