TEMPLATE = subdirs

SUBDIRS += \
    homeClimaClient \
    homeClimaClientLib \
    homeClimaClientService

homeClimaClient.depends = homeClimaClientLib
homeClimaClient.depends = homeClimaClientService
