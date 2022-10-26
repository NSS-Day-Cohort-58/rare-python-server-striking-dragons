create table Users (
	id INT,
	username VARCHAR(50),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),
	profile_image_url VARCHAR(50),
	bio VARCHAR(50),
	created_on DATE
);

create table Posts (
	id INT,
	title VARCHAR(50),
	user_id INT,
	category_id INT,
	tag_id INT,
	image_url VARCHAR(50),
	content TEXT,
	approved VARCHAR(50),
	publication_date DATE,
	updated_date DATE
);

create table Subscriptions (
	id INT,
	follower_id INT,
	author_id INT
);

create table Categories (
	id INT,
	label VARCHAR(50)
);

create table Comments (
	id INT,
	author_id INT,
	post_id INT,
	content VARCHAR(50)
);

create table Tags (
	id INT,
	label VARCHAR(50)
);

create table PostTags (
	id INT,
	post_id INT,
	tag_id INT
);

insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (1, 'oyuille0', 'Obidiah', 'Yuille', 'oyuille0@pen.io', 'fDbJj36H', 'https://robohash.org/impeditomniset.png?size=50x50&set=set1', 'orchestrate strategic technologies', '11/11/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (2, 'bgriffoen1', 'Brana', 'Griffoen', 'bgriffoen1@51.la', '15AQlyt278Vh', 'https://robohash.org/recusandaedoloremsunt.png?size=50x50&set=set1', 'target 24/7 experiences', '11/28/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (3, 'mtrinder2', 'Mag', 'Trinder', 'mtrinder2@myspace.com', 'tMy2ahN5NVl', 'https://robohash.org/velitveroaut.png?size=50x50&set=set1', 'implement open-source functionalities', '6/30/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (4, 'mclingan3', 'Maxwell', 'Clingan', 'mclingan3@washington.edu', 'COt5yT5mm', 'https://robohash.org/delenitinullaeum.png?size=50x50&set=set1', 'whiteboard vertical architectures', '6/15/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (5, 'bmalloch4', 'Birgit', 'Malloch', 'bmalloch4@wikia.com', 'Qi9deJpQG4RG', 'https://robohash.org/molestiaeatqueconsequatur.png?size=50x50&set=set1', 'engineer viral mindshare', '12/23/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (6, 'ajirusek5', 'Anastasie', 'Jirusek', 'ajirusek5@mtv.com', '4szXT2', 'https://robohash.org/inventorenihilest.png?size=50x50&set=set1', 'e-enable cutting-edge bandwidth', '3/21/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (7, 'bkernes6', 'Berte', 'Kernes', 'bkernes6@tripadvisor.com', 'b06g80Z8MkL', 'https://robohash.org/similiqueestincidunt.png?size=50x50&set=set1', 'revolutionize granular convergence', '8/9/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (8, 'tskillern7', 'Tabby', 'Skillern', 'tskillern7@barnesandnoble.com', 'G36SDkv', 'https://robohash.org/fugitnamearum.png?size=50x50&set=set1', 'incentivize dot-com networks', '5/1/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (9, 'tradcliffe8', 'Tammie', 'Radcliffe', 'tradcliffe8@admin.ch', 'ea1qZSKUm4Bs', 'https://robohash.org/sedautrem.png?size=50x50&set=set1', 'disintermediate sexy markets', '11/26/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (10, 'rmcgillicuddy9', 'Riane', 'McGillicuddy', 'rmcgillicuddy9@ft.com', '50pYuUHf1MF', 'https://robohash.org/ullaminet.png?size=50x50&set=set1', 'transform clicks-and-mortar applications', '8/3/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (11, 'agranchera', 'Andrey', 'Grancher', 'agranchera@ox.ac.uk', 'oYty3Si', 'https://robohash.org/perspiciatisilloexcepturi.png?size=50x50&set=set1', 'transform collaborative interfaces', '5/14/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (12, 'ljeavonsb', 'Lowe', 'Jeavons', 'ljeavonsb@jimdo.com', 'iaYfxZq', 'https://robohash.org/dictasapientedolorem.png?size=50x50&set=set1', 'innovate revolutionary action-items', '5/22/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (13, 'aclubbc', 'Anne-corinne', 'Clubb', 'aclubbc@phoca.cz', '93qg6Kg', 'https://robohash.org/dignissimosidesse.png?size=50x50&set=set1', 'evolve one-to-one e-markets', '6/26/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (14, 'vgreswelld', 'Vanny', 'Greswell', 'vgreswelld@livejournal.com', 'ldEE2ealI', 'https://robohash.org/quaeratfugasit.png?size=50x50&set=set1', 'seize e-business functionalities', '5/28/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (15, 'bwhorltone', 'Brett', 'Whorlton', 'bwhorltone@thetimes.co.uk', 'OJ5AfCrcM', 'https://robohash.org/quosverorerum.png?size=50x50&set=set1', 'iterate real-time deliverables', '12/18/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (16, 'gleclairef', 'Georgeanna', 'Le Claire', 'gleclairef@upenn.edu', 'dMMj03Q', 'https://robohash.org/explicabovelautem.png?size=50x50&set=set1', 'cultivate mission-critical interfaces', '12/29/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (17, 'zsideryg', 'Zahara', 'Sidery', 'zsideryg@abc.net.au', '0l7j3nAhqbZ', 'https://robohash.org/rerumquiatemporibus.png?size=50x50&set=set1', 'deliver magnetic action-items', '11/25/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (18, 'sbeauvaish', 'Stace', 'Beauvais', 'sbeauvaish@cornell.edu', 'KJEFBLDsZ', 'https://robohash.org/natusreprehenderitsit.png?size=50x50&set=set1', 'visualize impactful mindshare', '11/2/2021');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (19, 'aruburyi', 'Agnella', 'Rubury', 'aruburyi@skyrock.com', 'co0KNSu6c', 'https://robohash.org/voluptatibusreiciendisamet.png?size=50x50&set=set1', 'productize interactive systems', '2/8/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (20, 'gfosbraeyj', 'Gertruda', 'Fosbraey', 'gfosbraeyj@amazon.co.uk', 'bq3rb3', 'https://robohash.org/consequaturessevel.png?size=50x50&set=set1', 'mesh strategic functionalities', '1/6/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (21, 'kwisniowskik', 'Kissiah', 'Wisniowski', 'kwisniowskik@flickr.com', 'rpKLb6gEJ', 'https://robohash.org/estautemomnis.png?size=50x50&set=set1', 'mesh cutting-edge communities', '9/6/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (22, 'krapportl', 'Karil', 'Rapport', 'krapportl@discovery.com', 'GHtM1ROVO4Nx', 'https://robohash.org/suscipitenimdoloribus.png?size=50x50&set=set1', 'morph open-source technologies', '5/29/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (23, 'nchristerm', 'Nani', 'Christer', 'nchristerm@google.cn', 'saqwQ4s', 'https://robohash.org/fugiattemporeipsum.png?size=50x50&set=set1', 'reinvent viral convergence', '7/29/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (24, 'jsimeonn', 'Joletta', 'Simeon', 'jsimeonn@themeforest.net', 'TcDFOrPXY', 'https://robohash.org/nihilcorruptinon.png?size=50x50&set=set1', 'aggregate sexy supply-chains', '2/19/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (25, 'claydono', 'Carrissa', 'Laydon', 'claydono@sphinn.com', 'mChyVbXUbRL', 'https://robohash.org/namaliquidqui.png?size=50x50&set=set1', 'envisioneer next-generation relationships', '6/3/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (26, 'oalliottp', 'Otho', 'Alliott', 'oalliottp@hc360.com', 'zAqMdOHD', 'https://robohash.org/minimaatquenihil.png?size=50x50&set=set1', 'leverage dynamic channels', '8/13/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (27, 'efraryq', 'Elliot', 'Frary', 'efraryq@phpbb.com', 'N7vTA1dVdMg', 'https://robohash.org/consecteturfugitplaceat.png?size=50x50&set=set1', 'reinvent granular bandwidth', '4/14/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (28, 'bsherrockr', 'Bart', 'Sherrock', 'bsherrockr@imageshack.us', 'TJe2cO3cNxhT', 'https://robohash.org/etnesciuntincidunt.png?size=50x50&set=set1', 'unleash real-time metrics', '6/19/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (29, 'spaolillos', 'Shela', 'Paolillo', 'spaolillos@who.int', 'qPqma9L1paO', 'https://robohash.org/autatqueet.png?size=50x50&set=set1', 'grow frictionless e-commerce', '1/19/2022');
insert into Users (id, username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (30, 'bsemradt', 'Boniface', 'Semrad', 'bsemradt@illinois.edu', 'Ab106PMf9hD', 'https://robohash.org/quiutexplicabo.png?size=50x50&set=set1', 'embrace vertical channels', '8/3/2022');

insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (1, 'challenge', 20, 1, 5, 'http://dummyimage.com/191x100.png/ff4444/ffffff', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', false, '2/26/2022', '10/21/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (2, 'asymmetric', 12, 5, 4, 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', false, '5/21/2022', '10/24/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (3, 'secondary', 4, 3, 3, 'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', false, '9/17/2022', '10/10/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (4, 'collaboration', 15, 3, 1, 'http://dummyimage.com/214x100.png/dddddd/000000', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', true, '4/3/2022', '10/13/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (5, 'open architecture', 5, 2, 3, 'http://dummyimage.com/135x100.png/cc0000/ffffff', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', true, '11/10/2021', '10/6/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (6, 'success', 11, 3, 5, 'http://dummyimage.com/212x100.png/5fa2dd/ffffff', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', false, '3/9/2022', '10/13/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (7, 'parallelism', 12, 1, 4, 'http://dummyimage.com/188x100.png/cc0000/ffffff', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', true, '12/5/2021', '10/17/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (8, 'Triple-buffered', 7, 3, 1, 'http://dummyimage.com/172x100.png/dddddd/000000', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', false, '2/3/2022', '10/20/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (9, 'application', 8, 3, 3, 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', false, '3/26/2022', '10/21/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (10, 'system-worthy', 11, 2, 5, 'http://dummyimage.com/193x100.png/ff4444/ffffff', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', false, '2/10/2022', '10/7/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (11, 'exuding', 1, 4, 4, 'http://dummyimage.com/217x100.png/ff4444/ffffff', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', true, '5/19/2022', '10/11/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (12, 'Expanded', 11, 4, 2, 'http://dummyimage.com/157x100.png/5fa2dd/ffffff', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', false, '9/3/2022', '10/24/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (13, 'moratorium', 5, 2, 4, 'http://dummyimage.com/100x100.png/ff4444/ffffff', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', true, '8/13/2022', '10/17/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (14, 'Cross-platform', 7, 4, 4, 'http://dummyimage.com/166x100.png/ff4444/ffffff', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', false, '4/10/2022', '10/24/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (15, 'intangible', 5, 5, 1, 'http://dummyimage.com/112x100.png/cc0000/ffffff', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', false, '8/9/2022', '10/18/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (16, 'full-range', 17, 2, 1, 'http://dummyimage.com/112x100.png/cc0000/ffffff', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', false, '2/5/2022', '10/10/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (17, 'scalable', 3, 1, 1, 'http://dummyimage.com/131x100.png/ff4444/ffffff', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', false, '3/4/2022', '10/11/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (18, 'tertiary', 13, 2, 3, 'http://dummyimage.com/171x100.png/dddddd/000000', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', true, '8/26/2022', '10/21/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (19, 'Self-enabling', 11, 4, 2, 'http://dummyimage.com/248x100.png/ff4444/ffffff', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', false, '10/31/2021', '10/7/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (20, 'complexity', 3, 2, 3, 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', true, '9/22/2022', '10/23/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (21, 'focus group', 14, 5, 4, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', true, '1/31/2022', '10/9/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (22, 'support', 15, 1, 4, 'http://dummyimage.com/151x100.png/cc0000/ffffff', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', true, '7/12/2022', '10/2/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (23, 'definition', 15, 1, 4, 'http://dummyimage.com/170x100.png/dddddd/000000', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', true, '1/29/2022', '10/6/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (24, 'Streamlined', 1, 3, 5, 'http://dummyimage.com/199x100.png/dddddd/000000', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', true, '4/1/2022', '10/9/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (25, 'disintermediate', 17, 4, 5, 'http://dummyimage.com/247x100.png/cc0000/ffffff', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', true, '6/15/2022', '10/10/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (26, 'Vision-oriented', 7, 2, 4, 'http://dummyimage.com/122x100.png/cc0000/ffffff', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', false, '12/16/2021', '10/20/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (27, 'even-keeled', 16, 4, 3, 'http://dummyimage.com/239x100.png/5fa2dd/ffffff', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', true, '12/15/2021', '10/24/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (28, 'system engine', 13, 4, 3, 'http://dummyimage.com/151x100.png/dddddd/000000', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', true, '8/4/2022', '10/16/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (29, 'Automated', 8, 1, 2, 'http://dummyimage.com/170x100.png/5fa2dd/ffffff', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', true, '6/13/2022', '10/4/2022');
insert into Posts (id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date) values (30, 'directional', 3, 5, 2, 'http://dummyimage.com/118x100.png/ff4444/ffffff', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', false, '11/30/2021', '10/19/2022');

insert into Subscriptions (id, follower_id, author_id) values (1, 9, 16);
insert into Subscriptions (id, follower_id, author_id) values (2, 8, 10);
insert into Subscriptions (id, follower_id, author_id) values (3, 18, 2);
insert into Subscriptions (id, follower_id, author_id) values (4, 4, 12);
insert into Subscriptions (id, follower_id, author_id) values (5, 10, 18);
insert into Subscriptions (id, follower_id, author_id) values (6, 11, 5);
insert into Subscriptions (id, follower_id, author_id) values (7, 3, 8);
insert into Subscriptions (id, follower_id, author_id) values (8, 4, 6);
insert into Subscriptions (id, follower_id, author_id) values (9, 10, 18);
insert into Subscriptions (id, follower_id, author_id) values (10, 9, 4);
insert into Subscriptions (id, follower_id, author_id) values (11, 4, 19);
insert into Subscriptions (id, follower_id, author_id) values (12, 2, 8);
insert into Subscriptions (id, follower_id, author_id) values (13, 19, 7);
insert into Subscriptions (id, follower_id, author_id) values (14, 4, 3);
insert into Subscriptions (id, follower_id, author_id) values (15, 10, 2);
insert into Subscriptions (id, follower_id, author_id) values (16, 7, 10);
insert into Subscriptions (id, follower_id, author_id) values (17, 6, 20);
insert into Subscriptions (id, follower_id, author_id) values (18, 7, 13);
insert into Subscriptions (id, follower_id, author_id) values (19, 15, 3);
insert into Subscriptions (id, follower_id, author_id) values (20, 11, 17);
insert into Subscriptions (id, follower_id, author_id) values (21, 12, 9);
insert into Subscriptions (id, follower_id, author_id) values (22, 8, 5);
insert into Subscriptions (id, follower_id, author_id) values (23, 14, 1);
insert into Subscriptions (id, follower_id, author_id) values (24, 14, 7);
insert into Subscriptions (id, follower_id, author_id) values (25, 18, 6);
insert into Subscriptions (id, follower_id, author_id) values (26, 5, 15);
insert into Subscriptions (id, follower_id, author_id) values (27, 9, 9);
insert into Subscriptions (id, follower_id, author_id) values (28, 10, 2);
insert into Subscriptions (id, follower_id, author_id) values (29, 5, 8);
insert into Subscriptions (id, follower_id, author_id) values (30, 17, 11);

insert into Categories (id, label) values (1, 'Re-engineered intermediate productivity');
insert into Categories (id, label) values (2, 'Automated bi-directional encryption');
insert into Categories (id, label) values (3, 'Reverse-engineered needs-based product');
insert into Categories (id, label) values (4, 'Synergized radical circuit');
insert into Categories (id, label) values (5, 'Customer-focused multimedia alliance');

insert into Comments (id, author_id, post_id, content) values (1, 7, 29, 'Business-focused');
insert into Comments (id, author_id, post_id, content) values (2, 16, 24, 'Enterprise-wide');
insert into Comments (id, author_id, post_id, content) values (3, 5, 10, 'Multi-layered');
insert into Comments (id, author_id, post_id, content) values (4, 1, 28, 'context-sensitive');
insert into Comments (id, author_id, post_id, content) values (5, 1, 26, 'Graphical User Interface');
insert into Comments (id, author_id, post_id, content) values (6, 6, 27, 'Pre-emptive');
insert into Comments (id, author_id, post_id, content) values (7, 17, 2, 'policy');
insert into Comments (id, author_id, post_id, content) values (8, 18, 4, 'local');
insert into Comments (id, author_id, post_id, content) values (9, 5, 15, 'success');
insert into Comments (id, author_id, post_id, content) values (10, 15, 19, '3rd generation');
insert into Comments (id, author_id, post_id, content) values (11, 2, 29, 'Networked');
insert into Comments (id, author_id, post_id, content) values (12, 4, 27, 'solution');
insert into Comments (id, author_id, post_id, content) values (13, 8, 8, 'capability');
insert into Comments (id, author_id, post_id, content) values (14, 16, 27, 'system engine');
insert into Comments (id, author_id, post_id, content) values (15, 20, 8, 'adapter');
insert into Comments (id, author_id, post_id, content) values (16, 1, 17, 'methodology');
insert into Comments (id, author_id, post_id, content) values (17, 9, 17, 'ability');
insert into Comments (id, author_id, post_id, content) values (18, 14, 29, 'Robust');
insert into Comments (id, author_id, post_id, content) values (19, 15, 7, 'even-keeled');
insert into Comments (id, author_id, post_id, content) values (20, 10, 30, 'analyzer');
insert into Comments (id, author_id, post_id, content) values (21, 6, 14, 'Exclusive');
insert into Comments (id, author_id, post_id, content) values (22, 20, 14, 'Business-focused');
insert into Comments (id, author_id, post_id, content) values (23, 6, 27, 'User-centric');
insert into Comments (id, author_id, post_id, content) values (24, 14, 13, 'parallelism');
insert into Comments (id, author_id, post_id, content) values (25, 19, 8, 'multi-state');
insert into Comments (id, author_id, post_id, content) values (26, 8, 10, 'Quality-focused');
insert into Comments (id, author_id, post_id, content) values (27, 12, 15, 'Horizontal');
insert into Comments (id, author_id, post_id, content) values (28, 4, 18, 'Synchronised');
insert into Comments (id, author_id, post_id, content) values (29, 17, 1, 'adapter');
insert into Comments (id, author_id, post_id, content) values (30, 6, 27, 'maximized');
insert into Comments (id, author_id, post_id, content) values (31, 14, 27, 'Multi-lateral');
insert into Comments (id, author_id, post_id, content) values (32, 9, 13, 'Multi-lateral');
insert into Comments (id, author_id, post_id, content) values (33, 14, 26, 'migration');
insert into Comments (id, author_id, post_id, content) values (34, 18, 17, 'Right-sized');
insert into Comments (id, author_id, post_id, content) values (35, 1, 22, 'encompassing');
insert into Comments (id, author_id, post_id, content) values (36, 16, 14, 'leverage');
insert into Comments (id, author_id, post_id, content) values (37, 12, 24, 'function');
insert into Comments (id, author_id, post_id, content) values (38, 8, 3, 'client-driven');
insert into Comments (id, author_id, post_id, content) values (39, 15, 20, 'Ergonomic');
insert into Comments (id, author_id, post_id, content) values (40, 7, 13, 'Decentralized');

insert into Tags (id, label) values (1, 'Comedy|Crime|Drama');
insert into Tags (id, label) values (2, 'Crime|Documentary|Mystery');
insert into Tags (id, label) values (3, 'Drama');
insert into Tags (id, label) values (4, 'Action|Crime|Musical');
insert into Tags (id, label) values (5, 'Drama');

insert into PostTags (id, post_id, tag_id) values (1, 1, 2);
insert into PostTags (id, post_id, tag_id) values (2, 9, 2);
insert into PostTags (id, post_id, tag_id) values (3, 30, 1);
insert into PostTags (id, post_id, tag_id) values (4, 2, 2);
insert into PostTags (id, post_id, tag_id) values (5, 11, 5);
insert into PostTags (id, post_id, tag_id) values (6, 20, 4);
insert into PostTags (id, post_id, tag_id) values (7, 7, 1);
insert into PostTags (id, post_id, tag_id) values (8, 23, 3);
insert into PostTags (id, post_id, tag_id) values (9, 27, 4);
insert into PostTags (id, post_id, tag_id) values (10, 27, 2);
insert into PostTags (id, post_id, tag_id) values (11, 11, 5);
insert into PostTags (id, post_id, tag_id) values (12, 30, 1);
insert into PostTags (id, post_id, tag_id) values (13, 28, 4);
insert into PostTags (id, post_id, tag_id) values (14, 23, 3);
insert into PostTags (id, post_id, tag_id) values (15, 24, 1);
insert into PostTags (id, post_id, tag_id) values (16, 21, 3);
insert into PostTags (id, post_id, tag_id) values (17, 4, 4);
insert into PostTags (id, post_id, tag_id) values (18, 11, 3);
insert into PostTags (id, post_id, tag_id) values (19, 27, 2);
insert into PostTags (id, post_id, tag_id) values (20, 22, 4);
insert into PostTags (id, post_id, tag_id) values (21, 8, 5);
insert into PostTags (id, post_id, tag_id) values (22, 7, 2);
insert into PostTags (id, post_id, tag_id) values (23, 19, 5);
insert into PostTags (id, post_id, tag_id) values (24, 8, 2);
insert into PostTags (id, post_id, tag_id) values (25, 24, 2);
insert into PostTags (id, post_id, tag_id) values (26, 18, 4);
insert into PostTags (id, post_id, tag_id) values (27, 8, 3);
insert into PostTags (id, post_id, tag_id) values (28, 26, 1);
insert into PostTags (id, post_id, tag_id) values (29, 11, 2);
insert into PostTags (id, post_id, tag_id) values (30, 6, 4);
insert into PostTags (id, post_id, tag_id) values (31, 29, 3);
insert into PostTags (id, post_id, tag_id) values (32, 7, 3);
insert into PostTags (id, post_id, tag_id) values (33, 6, 5);
insert into PostTags (id, post_id, tag_id) values (34, 30, 1);
insert into PostTags (id, post_id, tag_id) values (35, 1, 3);
insert into PostTags (id, post_id, tag_id) values (36, 16, 5);
insert into PostTags (id, post_id, tag_id) values (37, 26, 2);
insert into PostTags (id, post_id, tag_id) values (38, 18, 5);
insert into PostTags (id, post_id, tag_id) values (39, 1, 2);
insert into PostTags (id, post_id, tag_id) values (40, 24, 2);


