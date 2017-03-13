#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AFHTTPRequestOperationManager+MultipartformPUT.h"
#import "MTLJSONAdapter+NTMappingAdditions.h"
#import "NSDictionary+NTMappingAdditions.h"
#import "Vacation.h"
#import "VCFileWrapper.h"
#import "VCStateTransferObject+Archiving.h"
#import "VCStateTransferObject+CRUD.h"
#import "VCStateTransferObject+DateTransformer.h"
#import "VCStateTransferObject+FileUpload.h"
#import "VCStateTransferObject.h"
#import "VCWebService.h"

FOUNDATION_EXPORT double VacationVersionNumber;
FOUNDATION_EXPORT const unsigned char VacationVersionString[];

