project('broken-args', 'c',
    license: 'GPLv2+',
    default_options: [
        'buildtype=debugoptimized',
        'warning_level=3',
        'c_std=gnu99',
        'c_args=' + ' '.join([
            '-fno-strict-aliasing',
            '-Wmissing-noreturn',
            '-Wundef',
            '-Wunused',
        ]),
    ],
    meson_version: '>= 0.50.0')

hello = executable('hello',
    sources: 'hello.c',
    install: false
)

test('Hello symbols',
    find_program('check-symbols.sh'),
    args: hello,
    depends: hello,
)
