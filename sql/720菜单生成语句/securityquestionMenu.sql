-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题', '3', '1', '/module/securityquestion', 'C', '0', 'module:securityquestion:view', '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '平台安全问题菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题查询', @parentId, '1',  '#',  'F', '0', 'module:securityquestion:list',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题新增', @parentId, '2',  '#',  'F', '0', 'module:securityquestion:add',          '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题修改', @parentId, '3',  '#',  'F', '0', 'module:securityquestion:edit',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题删除', @parentId, '4',  '#',  'F', '0', 'module:securityquestion:remove',       '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');

insert into sys_menu  (menu_name, parent_id, order_num, url,menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values('平台安全问题保存', @parentId, '5',  '#',  'F', '0', 'module:securityquestion:save',         '#', 'admin', '2018-03-01', 'ry', '2018-03-01', '');
