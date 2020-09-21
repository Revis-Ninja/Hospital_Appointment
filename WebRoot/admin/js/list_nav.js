var t;

t=outlookbar.addtitle('change password')
outlookbar.additem('change password',t,'/guahao/admin/userinfo/userPw.jsp')


t=outlookbar.addtitle('hospital introduction')
outlookbar.additem('hospital introduction',t,'/guahao/jieshaoMana.action')

t=outlookbar.addtitle('Specialty Dpt Management')
outlookbar.additem('Add Specialty',t,'/guahao/admin/keshi/keshiAdd.jsp')
outlookbar.additem('Specialty Dpt Management',t,'/guahao/keshiMana.action')

t=outlookbar.addtitle('Expert Info Management')
outlookbar.additem('Add Doctor',t,'/guahao/admin/yisheng/yishengAdd.jsp')
outlookbar.additem('Expert Info Management',t,'/guahao/yishengMana.action')


t=outlookbar.addtitle('User Management')
outlookbar.additem('User Management',t,'/guahao/userMana.action')


t=outlookbar.addtitle('Appointment Information')
outlookbar.additem('Appointment Information',t,'/guahao/yuyueMana.action')


t=outlookbar.addtitle('Comments Management')
outlookbar.additem('Comments Management',t,'/guahao/liuyanMana.action')


t=outlookbar.addtitle('Announcement Management')
outlookbar.additem('Announcement Management',t,'/guahao/gonggaoMana.action')
outlookbar.additem('Add Announcement',t,'/guahao/admin/gonggao/gonggaoAdd.jsp')


t=outlookbar.addtitle('Exit')
outlookbar.additem('Exit',t,'/guahao/login.jsp')