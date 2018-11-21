-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间', '3', '1', '/module/paymentmethods', 'C', '0', 'module:paymentmethods:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '平台支付方式_中间菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间查询', @parentId, '1',  '#',  'F', '0', 'module:paymentmethods:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间新增', @parentId, '2',  '#',  'F', '0', 'module:paymentmethods:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间修改', @parentId, '3',  '#',  'F', '0', 'module:paymentmethods:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间删除', @parentId, '4',  '#',  'F', '0', 'module:paymentmethods:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台支付方式_中间保存', @parentId, '5',  '#',  'F', '0', 'module:paymentmethods:save',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
