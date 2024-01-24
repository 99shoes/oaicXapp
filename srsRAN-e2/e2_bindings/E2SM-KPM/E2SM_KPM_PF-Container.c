/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "E2SM-KPM-IEs"
 * 	found in "/local/setup/srslte-ric/srsenb/src/ric/messages/asn1/e2sm-kpm-v01.00.asn1"
 * 	`asn1c -pdu=all -fcompound-names -gen-PER -no-gen-OER -no-gen-example -fno-include-deps -fincludes-quoted -D /local/setup/srslte-ric/build/srsenb/src/ric/messages/E2SM-KPM/`
 */

#include "E2SM_KPM_PF-Container.h"

asn_per_constraints_t asn_PER_type_E2SM_KPM_PF_Container_constr_1 CC_NOTUSED = {
	{ APC_CONSTRAINED,	 2,  2,  0,  2 }	/* (0..2) */,
	{ APC_UNCONSTRAINED,	-1, -1,  0,  0 },
	0, 0	/* No PER value map */
};
asn_TYPE_member_t asn_MBR_E2SM_KPM_PF_Container_1[] = {
	{ ATF_NOFLAGS, 0, offsetof(struct E2SM_KPM_PF_Container, choice.oDU),
		(ASN_TAG_CLASS_CONTEXT | (0 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_E2SM_KPM_ODU_PF_Container,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"oDU"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct E2SM_KPM_PF_Container, choice.oCU_CP),
		(ASN_TAG_CLASS_CONTEXT | (1 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_E2SM_KPM_OCUCP_PF_Container,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"oCU-CP"
		},
	{ ATF_NOFLAGS, 0, offsetof(struct E2SM_KPM_PF_Container, choice.oCU_UP),
		(ASN_TAG_CLASS_CONTEXT | (2 << 2)),
		-1,	/* IMPLICIT tag at current level */
		&asn_DEF_E2SM_KPM_OCUUP_PF_Container,
		0,
		{ 0, 0, 0 },
		0, 0, /* No default value */
		"oCU-UP"
		},
};
static const asn_TYPE_tag2member_t asn_MAP_E2SM_KPM_PF_Container_tag2el_1[] = {
    { (ASN_TAG_CLASS_CONTEXT | (0 << 2)), 0, 0, 0 }, /* oDU */
    { (ASN_TAG_CLASS_CONTEXT | (1 << 2)), 1, 0, 0 }, /* oCU-CP */
    { (ASN_TAG_CLASS_CONTEXT | (2 << 2)), 2, 0, 0 } /* oCU-UP */
};
asn_CHOICE_specifics_t asn_SPC_E2SM_KPM_PF_Container_specs_1 = {
	sizeof(struct E2SM_KPM_PF_Container),
	offsetof(struct E2SM_KPM_PF_Container, _asn_ctx),
	offsetof(struct E2SM_KPM_PF_Container, present),
	sizeof(((struct E2SM_KPM_PF_Container *)0)->present),
	asn_MAP_E2SM_KPM_PF_Container_tag2el_1,
	3,	/* Count of tags in the map */
	0, 0,
	-1	/* Extensions start */
};
asn_TYPE_descriptor_t asn_DEF_E2SM_KPM_PF_Container = {
	"PF-Container",
	"PF-Container",
	&asn_OP_CHOICE,
	0,	/* No effective tags (pointer) */
	0,	/* No effective tags (count) */
	0,	/* No tags (pointer) */
	0,	/* No tags (count) */
	{ 0, &asn_PER_type_E2SM_KPM_PF_Container_constr_1, CHOICE_constraint },
	asn_MBR_E2SM_KPM_PF_Container_1,
	3,	/* Elements count */
	&asn_SPC_E2SM_KPM_PF_Container_specs_1	/* Additional specs */
};
