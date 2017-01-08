def cc_qt_library(name, hdrs, srcs, **kargs):
    moc_srcs = []

    for hdr in hdrs:
        base_name = hdr.split('/')[-1]
        if base_name[-2:] == '.h':
            base_name = base_name[:-2]
        elif base_name[-4:] == '.hpp':
            base_name = base_name[:-4]

        moc_name = base_name + '_moc'
        output = moc_name + '.cpp'

        native.genrule(
            name = moc_name,
            srcs = [ hdr ],
            cmd = '$(location @qt_base//:moc) %s -o $(GENDIR)/%s' % (hdr, output),
            outs = [ output ],
            tools = ['@qt_base//:moc'],
            message = 'Generating %s' % (output)
        )
        moc_srcs.append(output)

    native.cc_library(
        name = name,
        hdrs = hdrs,
        srcs = srcs + moc_srcs,
        **kargs
    )
