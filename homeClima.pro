TEMPLATE = subdirs

SUBDIRS += \
    homeClimaClient \
    homeClimaClientLib

homeClimaClient.depends = homeClimaClientLib
