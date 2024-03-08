
CREATE TABLE `00_cms_structure_entities` (
`id` int NOT NULL,
`uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n(DC2Type:guid)',
`name` varchar(255) DEFAULT NULL,
`page_title` varchar(255) DEFAULT NULL,
`main_table` varchar(255) DEFAULT NULL,
`rollback` tinyint(1) DEFAULT NULL,
`grid_sortname` varchar(255) DEFAULT 'id',
`grid_sortorder` varchar(50) DEFAULT NULL,
`cancelled` tinyint(1) NOT NULL DEFAULT '0',
`locked` tinyint(1) NOT NULL DEFAULT '0',
`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
`deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
`version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
`grid_operations` text,
`sortable` tinyint NOT NULL DEFAULT '0',
`generated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last generation',
`cms_attributes` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci COMMENT 'Extra Attributes',
`webhooks_insert` text COMMENT 'On insert',
`webhooks_update` text COMMENT 'On update',
`inpage_operations` text COMMENT 'inpage_operations',
`setters` tinyint NOT NULL DEFAULT '0' COMMENT 'Setters - allowed',
`getters` tinyint NOT NULL DEFAULT '0' COMMENT 'Getters - allowed',
`seo_required` tinyint NOT NULL DEFAULT '0' COMMENT 'Requires SEO for each Record',
`seo_attributes` longtext COMMENT 'SEO Attributes',
`custom_edit` varchar(255) DEFAULT NULL COMMENT 'Custom Edit Link',
`custom_add` varchar(255) DEFAULT NULL COMMENT 'Custom Add Link'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `00_cms_structure_entities_updates` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
  `deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Locked Record?',
  `archived` tinyint NOT NULL DEFAULT '0' COMMENT 'Archived Record?',
  `cancelled` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted Record?',
  `version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
  `cms_attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Extra Attributes',
  `seo_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'SEO Attributes',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'Unique ID',
  `00_cms_structure_entities_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '00_cms_structure_entities_id',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IP',
  `extension_original` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Original File',
  `alt_original` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alternative field for Original File',
  `extension_updated` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Updated File',
  `alt_updated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alternative field for Updated File',
  `00_cms_users_id` bigint DEFAULT NULL COMMENT 'Admin',
  `00_cms_users_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin Email',
  `trigger` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Triggered By',
  `row_uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Row UUID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `00_cms_structure_entities_fields` (
`id` int NOT NULL,
`uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n(DC2Type:guid)',
`orders` double NOT NULL,
`required` tinyint(1) DEFAULT '0',
`cms_structure_entities_id` char(36) NOT NULL COMMENT '\r\n(DC2Type:guid)',
`label` varchar(255) NOT NULL,
`name` varchar(255) DEFAULT NULL,
`type` varchar(255) NOT NULL,
`value_from_query` text DEFAULT NULL,
`size` varchar(255) DEFAULT NULL,
`additional_class` varchar(255) DEFAULT NULL,
`file_preview` varchar(255) DEFAULT NULL,
`event` text DEFAULT NULL,
`alt` varchar(255) DEFAULT NULL,
`javascript` text DEFAULT NULL,
`db_type` varchar(50) DEFAULT NULL,
`db_length` varchar(10) DEFAULT NULL,
`db_default_value` varchar(255) DEFAULT NULL,
`query_value` text DEFAULT NULL,
`hide_grid` tinyint(1) DEFAULT '0',
`grid_filter_textonly` tinyint(1) DEFAULT '0',
`file_folder` varchar(255) DEFAULT NULL,
`file_extensions` varchar(5) DEFAULT NULL,
`container_class` varchar(50) DEFAULT 's12',
`locked` tinyint(1) NOT NULL DEFAULT '0',
`cancelled` tinyint(1) NOT NULL DEFAULT '0',
`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
`deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
`version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
`max` double(8,2) DEFAULT NULL COMMENT 'Maximum Value',
  `min` double(8,2) DEFAULT NULL COMMENT 'Minimum Value',
  `json_format` text COMMENT 'Json Format',
  `container_tags` varchar(255) DEFAULT NULL COMMENT 'Container Tags',
  `ismultilanguage` tinyint(1) NOT NULL DEFAULT '0',
  `conditional_logic` text  NULL COMMENT 'Conditional Logic',
  `cms_attributes` longtext NULL COMMENT 'Extra Attributes',
  `editable_twa` tinyint NOT NULL DEFAULT '0' COMMENT 'Only Editable By TWA',
  `field_group_id` varchar(255) DEFAULT NULL COMMENT 'Field Group ID',
  `grid_pin` tinyint NOT NULL DEFAULT '0' COMMENT 'Pin To Grid Start',
  `seo_attributes` longtext DEFAULT NULL COMMENT 'SEO Attributes',
  `grouping_attributes` longtext DEFAULT NULL COMMENT 'Grouping Attributes',
  `cms_structure_cards_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





CREATE TABLE `00_cms_structure_cards` (
                                          `id` bigint UNSIGNED NOT NULL,
                                          `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n(DC2Type:guid)',
                                          `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
                                          `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
                                          `deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
                                          `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Locked Record?',
                                          `cancelled` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted Record?',
                                          `version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
                                          `cms_attributes` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Extra Attributes',
                                          `seo_attributes` longtext COLLATE utf8mb4_unicode_ci COMMENT 'SEO Attributes',
                                          `query_card` text COLLATE utf8mb4_unicode_ci COMMENT 'Query',
                                          `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Label',
                                          `query_translateid` text COLLATE utf8mb4_unicode_ci COMMENT 'Query to translate ID into a value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `00_cms_users_permissions` (
    `id` bigint NOT NULL,
    `cms_users_id` int NOT NULL,
    `cms_structure_menu_id` int NOT NULL,
    `permission_add` tinyint(1) NOT NULL,
    `permission_edit` tinyint(1) NOT NULL,
    `permission_delete` tinyint(1) NOT NULL,
    `permission_import` tinyint(1) NOT NULL,
    `permission_view` tinyint(1) NOT NULL,
    `permission_exel` tinyint(1) NOT NULL,
    `permission_rollback` tinyint(1) NOT NULL DEFAULT '0',
    `permission_duplicate` tinyint(1) NOT NULL,
    `permission_view_cancelled` tinyint(1) NOT NULL,
    `cancelled` tinyint(1) NOT NULL DEFAULT '0',
    `locked` tinyint(1) NOT NULL,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `00_cms_structure_entities_attributes` (
                                                        `id` bigint UNSIGNED NOT NULL,
                                                        `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                                        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
                                                        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
                                                        `deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
                                                        `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Locked Record?',
                                                        `cancelled` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted Record?',
                                                        `version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
                                                        `orders` double(8,2) DEFAULT NULL COMMENT 'Ordering Index',
  `cms_structure_entities_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Choose the Entity',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Type of the Attribute',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Label',
  `query_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'MYSQL Query Populating the form',
  `value_from_query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'MYSQL Query Populating the field',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Column Name',
  `db_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'DB Type',
  `db_length` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'DB Length',
  `cms_attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Extra Attributes',
  `json_format` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'SEO Attributes',
  `archived` tinyint NOT NULL DEFAULT '0' COMMENT 'Archived Record?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `00_cms_users_logs` (
                                     `id` bigint UNSIGNED NOT NULL,
                                     `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                     `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
                                     `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
                                     `deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
                                     `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Locked Record?',
                                     `cancelled` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted Record?',
                                     `version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
                                     `cms_attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Extra Attributes',
                                     `seo_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'SEO Attributes',
                                     `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Username',
                                     `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Password',
                                     `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IP Address',
                                     `failed` tinyint NOT NULL DEFAULT '0' COMMENT 'Failed Login',
                                     `archived` tinyint NOT NULL DEFAULT '0' COMMENT 'Archived Record?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `00_cms_structure_menu` (
                                         `id` bigint UNSIGNED NOT NULL,
                                         `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
                                         `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of last update',
                                         `deleted_at` datetime DEFAULT NULL COMMENT 'Date if deleted',
                                         `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Locked Record?',
                                         `archived` tinyint NOT NULL DEFAULT '0' COMMENT 'Archived Record?',
                                         `cancelled` tinyint NOT NULL DEFAULT '0' COMMENT 'Deleted Record?',
                                         `version` mediumint NOT NULL DEFAULT '0' COMMENT 'Current Version',
                                         `cms_attributes` longtext COLLATE utf8mb4_unicode_ci COMMENT 'Extra Attributes',
                                         `seo_attributes` longtext COLLATE utf8mb4_unicode_ci COMMENT 'SEO Attributes',
                                         `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unique ID',
                                         `orders` double(48,16) DEFAULT NULL COMMENT 'Ordering Index',
  `grouplabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Group Label',
  `cms_structure_menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Menu',
  `script_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CMS Page',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Label',
  `show_frontend` tinyint DEFAULT '0' COMMENT 'Show Front End',
  `published` tinyint DEFAULT '0' COMMENT 'Published',
  `show_home` tinyint DEFAULT '0' COMMENT 'Show Home',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Icon',
  `show_settings` tinyint DEFAULT '0' COMMENT 'Show In Settings',
  `catalogue` tinyint DEFAULT '0' COMMENT 'Supports Catalogue',
  `script_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Custom Link'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `00_cms_structure_entities`
    ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`);

ALTER TABLE `00_cms_structure_entities`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;


ALTER TABLE `00_cms_structure_entities_fields`
    ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`);

ALTER TABLE `00_cms_structure_entities_fields`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
COMMIT;

ALTER TABLE `00_cms_structure_cards`
    ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`uuid`);

ALTER TABLE `00_cms_users_logs`
    ADD PRIMARY KEY (`id`),
  ADD KEY `00_cms_users_logs_uuid_index` (`uuid`);


ALTER TABLE `00_cms_structure_cards`
    MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;



ALTER TABLE `00_cms_users_permissions`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `00_cms_users_permissions`
    MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

ALTER TABLE `00_cms_structure_entities_attributes`
    ADD PRIMARY KEY (`id`),
  ADD KEY `00_cms_structure_entities_attributes_uuid_index` (`uuid`);

ALTER TABLE `00_cms_structure_menu`
    ADD PRIMARY KEY (`id`),
  ADD KEY `00_cms_structure_menu_uuid_index` (`uuid`);

ALTER TABLE `00_cms_structure_menu`
    MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `00_cms_users_logs`
    MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;


CREATE TRIGGER 00_cms_structure_entities_uuid_trigger BEFORE INSERT ON 00_cms_structure_entities FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
CREATE TRIGGER 00_cms_structure_entities_fields_uuid_trigger BEFORE INSERT ON 00_cms_structure_entities_fields FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
CREATE TRIGGER 00_cms_structure_cards_uuid_trigger BEFORE INSERT ON 00_cms_structure_cards FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
CREATE TRIGGER `00_cms_users_logs.uuid_trigger` BEFORE INSERT ON `00_cms_users_logs` FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
CREATE TRIGGER `00_cms_structure_entities_attributes.uuid_trigger` BEFORE INSERT ON `00_cms_structure_entities_attributes` FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
CREATE TRIGGER `00_cms_structure_menu.uuid_trigger` BEFORE INSERT ON `00_cms_structure_menu` FOR EACH ROW BEGIN IF new.uuid IS NULL THEN SET new.uuid = uuid(); END IF; END;
