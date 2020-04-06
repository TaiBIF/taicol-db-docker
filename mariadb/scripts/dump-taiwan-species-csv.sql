SELECT kingdom, kingdom_c, phylum, phylum_c, class, class_c, `order`, order_c,
family, family_c, table_specieslist.name_code, `name`, genus, genus_c, species,
infraspecies_marker, infraspecies, infraspecies2_marker, infraspecies2, author,
author2, accepted_name_code, status_id, is_accepted_name, is_endemic,
is_marine, alien_status, is_fossil, common_name_c, redlist_wang, redlist_wang_ass,
redlist_chen, iucn_code, iucn_assessment, iucn_dateassessed, iucn_id,
coa_redlist_code, cites_code
FROM table_specieslist
LEFT JOIN details ON table_specieslist.name_code = details.name_code
INTO OUTFILE '/taicol-code/output/taiwan-species.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
