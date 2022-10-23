/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "NGAP-IEs"
 * 	found in "asn/ngap-15.8.0.asn1"
 * 	`asn1c -fcompound-names -pdu=all -findirect-choice -fno-include-deps -gen-PER -no-gen-OER -no-gen-example -D ngap`
 */

#include "ASN_NGAP_CNTypeRestrictionsForEquivalentItem.h"

#include "ASN_NGAP_ProtocolExtensionContainer.h"
/*
 * This type is implemented using NativeEnumerated,
 * so here we adjust the DEF accordingly.
 */
static asn_per_constraints_t asn_PER_type_ASN_NGAP_cn_Type_constr_3 CC_NOTUSED = {
	{ APC_CONSTRAINED | APC_EXTENSIBLE,  1,  1,  0,  1 }	/* (0..1,...) */,
	{ APC_UNCONSTRAINED,	-1, -1,  0,  0 },
	0, 0	/* No PER value map */
};
static const asn_INTEGER_enum_map_t asn_MAP_ASN_NGAP_cn_Type_value2enum_3[] = {
	{ 0,	13,	"epc-forbidden" },
	{ 1,	16,	"fiveGC-forbidden" }
	/* This list is extensible */
};
static const unsigned int asn_MAP_ASN_NGAP_cn_Type_enum2value_3[] = {
	0,	/* epc-forbidden(0) */
	1	/* fiveGC-forbidden(1) */
	/* This list is extensible */
};
static const asn_INTEGER_specifics_t asn_SPC_ASN_NGAP_cn_Type_specs_3 = {
	asn_MAP_ASN_NGAP_cn_Type_value2enum_3,	/* "tag" => N; sorted by tag */
	asn_MAP_ASN_NGAP_cn_Type_enum2value_3,	/* N => "tag"; sorted by N */
	2,	/* Number of elements in the maps */
	3,	/* Extensions before this member */
	1,	/* Strict enumeration */
	0,	/* Native long size */
	0
};
static const ber_tlv_tag_t asn_DEF_ASN_NGAP_cn_Type_tags_3[] = {
	(ASN_TAG_CLASS_CONTEXT | (1 << 2)),
	(ASN_TAG_CLASS_UNIVERSAL | (10 << 2))
};
static /* Use -fall-defs-global to expose */
asn_TYPE_descriptor_t asn_DEF_ASN_NGAP_cn_Type_3 = {
	"cn-Type",
	"cn-Type",
	&asn_OP_NativeEnumerated,
	asn_DEF_ASN_NGAP_cn_Type_tags_3,
	sizeof(asn_DEF_ASN_NGAP_cn_Type_tags_3)
		/sizeof(asn_DEF_ASN_NGAP_cn_Type_tags_3[0]) - 1, /* 1 */
	asn_DEF_ASN_NGAP_cn_Type_tags_3,	/* Same as above */
	sizeof(asn_DEF_ASN_NGAP_cn_Type_tags_3)
		/sizeof(asn_DEF_ASN_NGAP_cn_Type_tags_3[0]), /* 2 */
	{ 0, &asn_PER_type_ASN_NGAP_cn_Type_constr_3, NativeEnumerated_constraint },
	0, 0,	/* Defined elsewhere */
	&asn_SPC_ASN_NGAP_cn_Type_specs_3	/* Additional specs */
};

asn_TYPE_member_t asn_MBR_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_1[] = {
	{ ATF_NOFLAGS, 0, offsetof(struct ASN_NGAP_CNTypeRestrictionsForEquivalentItem, plmnIdentity),
		(ASN_TAG_CLASS_CONTEXT | (0 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_ASN_NGAP_PLMNIdentity,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"plmnIdentity"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct ASN_NGAP_CNTypeRestrictionsForEquivalentItem, cn_Type),
		(ASN_TAG_CLASS_CONTEXT | (1 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_ASN_NGAP_cn_Type_3,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"cn-Type"
		},
	{ ATF_POINTER, 1, offsetof(struct ASN_NGAP_CNTypeRestrictionsForEquivalentItem, iE_Extensions),
		(ASN_TAG_CLASS_CONTEXT | (2 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_ASN_NGAP_ProtocolExtensionContainer_6861P26,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"iE-Extensions"
		},
};
static const int asn_MAP_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_oms_1[] = { 2 };
static const ber_tlv_tag_t asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1[] = {
	(ASN_TAG_CLASS_UNIVERSAL | (16 << 2))
};
static const asn_TYPE_tag2member_t asn_MAP_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tag2el_1[] = {
    { (ASN_TAG_CLASS_CONTEXT | (0 << 2)), 0, 0, 0 }, /* plmnIdentity */
    { (ASN_TAG_CLASS_CONTEXT | (1 << 2)), 1, 0, 0 }, /* cn-Type */
    { (ASN_TAG_CLASS_CONTEXT | (2 << 2)), 2, 0, 0 } /* iE-Extensions */
};
asn_SEQUENCE_specifics_t asn_SPC_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_specs_1 = {
	sizeof(struct ASN_NGAP_CNTypeRestrictionsForEquivalentItem),
	offsetof(struct ASN_NGAP_CNTypeRestrictionsForEquivalentItem, _asn_ctx),
	asn_MAP_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tag2el_1,
	3,	/* Count of tags in the map */
	asn_MAP_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_oms_1,	/* Optional members */
	1, 0,	/* Root/Additions */
	3,	/* First extension addition */
};
asn_TYPE_descriptor_t asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem = {
	"CNTypeRestrictionsForEquivalentItem",
	"CNTypeRestrictionsForEquivalentItem",
	&asn_OP_SEQUENCE,
	asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1,
	sizeof(asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1)
		/sizeof(asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1[0]), /* 1 */
	asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1,	/* Same as above */
	sizeof(asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1)
		/sizeof(asn_DEF_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_tags_1[0]), /* 1 */
	{ 0, 0, SEQUENCE_constraint },
	asn_MBR_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_1,
	3,	/* Elements count */
	&asn_SPC_ASN_NGAP_CNTypeRestrictionsForEquivalentItem_specs_1	/* Additional specs */
};

