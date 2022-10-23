/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "NR-RRC-Definitions"
 * 	found in "asn/nr-rrc-15.6.0.asn1"
 * 	`asn1c -fcompound-names -pdu=all -findirect-choice -fno-include-deps -gen-PER -no-gen-OER -no-gen-example -D rrc`
 */

#ifndef	_ASN_RRC_SlotFormatIndicator_H_
#define	_ASN_RRC_SlotFormatIndicator_H_


#include <asn_application.h>

/* Including external dependencies */
#include "ASN_RRC_RNTI-Value.h"
#include <NativeInteger.h>
#include <asn_SEQUENCE_OF.h>
#include <constr_SEQUENCE_OF.h>
#include "ASN_RRC_ServCellIndex.h"
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Forward declarations */
struct ASN_RRC_SlotFormatCombinationsPerCell;

/* ASN_RRC_SlotFormatIndicator */
typedef struct ASN_RRC_SlotFormatIndicator {
	ASN_RRC_RNTI_Value_t	 sfi_RNTI;
	long	 dci_PayloadSize;
	struct ASN_RRC_SlotFormatIndicator__slotFormatCombToAddModList {
		A_SEQUENCE_OF(struct ASN_RRC_SlotFormatCombinationsPerCell) list;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} *slotFormatCombToAddModList;
	struct ASN_RRC_SlotFormatIndicator__slotFormatCombToReleaseList {
		A_SEQUENCE_OF(ASN_RRC_ServCellIndex_t) list;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} *slotFormatCombToReleaseList;
	/*
	 * This type is extensible,
	 * possible extensions are below.
	 */
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} ASN_RRC_SlotFormatIndicator_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_ASN_RRC_SlotFormatIndicator;
extern asn_SEQUENCE_specifics_t asn_SPC_ASN_RRC_SlotFormatIndicator_specs_1;
extern asn_TYPE_member_t asn_MBR_ASN_RRC_SlotFormatIndicator_1[4];

#ifdef __cplusplus
}
#endif

#endif	/* _ASN_RRC_SlotFormatIndicator_H_ */
#include <asn_internal.h>