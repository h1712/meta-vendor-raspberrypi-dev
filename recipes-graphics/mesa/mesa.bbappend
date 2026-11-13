FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove = "${@'file://0001-freedreno-don\'t-encode-build-path-into-binaries.patch' if d.getVar('PV') == '22.0.3' else ''}"
SRC_URI:append = "${@' file://0001-freedreno-don\'t-encode-build-path-into-binaries-mesa-22.0.3.patch' if d.getVar('PV') == '22.0.3' else ''}"

python __anonymous() {
    if d.getVar("PV") == "22.0.3":
        d.setVarFlag("SRC_URI", "sha256sum", "9f2b30f5276a9abaf71aafc6979685e2636189de1a87aea2c9e69744a6d0ebb9")
}
