-- create update
create table if not exists public.repositories
(
    id           bigserial
        primary key,
    owner        varchar,
    name         varchar,
    url          varchar,
    last_fetched timestamp with time zone,
    created_at   timestamp with time zone,
    updated_at   timestamp with time zone
);

alter table public.repositories
    owner to "user";

create table if not exists public.commits
(
    id      varchar,
    repo_id bigint,
    message varchar,
    author  varchar,
    date    timestamp with time zone,
    url     varchar
);

alter table public.commits
    owner to "user";

-- insert repositories
INSERT INTO public.repositories (id, owner, name, url, last_fetched, created_at, updated_at) VALUES (1, 'chromium', 'chromium', 'https://github.com/chromium/chromium', '2002-05-10 00:00:00.000000 +00:00', '2025-06-05 19:58:22.213428 +00:00', '2025-06-05 19:58:22.213428 +00:00');

-- insert commits
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000001s2bv0rcfc5', 1, 'Added generated files git-svn-id: svn://svn.chromium.org/blink/trunk@23 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 15:32:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/18aa945193eb26a13184779cb51664df00100a0f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000101s29ax4mos3', 1, 'Removed generated file git-svn-id: svn://svn.chromium.org/blink/trunk@22 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 15:23:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e4d062b17a3ee7ff1e4b87ae1f23438e26a563d3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000201s261tpt27j', 1, 'Removed generated source files git-svn-id: svn://svn.chromium.org/blink/trunk@21 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 15:20:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/141a5aba69cb024dc9164d8056656c981c9c2fab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000301s234vmkcb3', 1, e'Modified a number of files by adding skeletal type implementations and
includes that aid in getting khtml/dom to compile.


git-svn-id: svn://svn.chromium.org/blink/trunk@20 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 13:51:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/344046283445977a4cd984860481a589fec6f2e2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000401s25xol1dk8', 1, e'Added a basic set of files for an autoconf-based build system


git-svn-id: svn://svn.chromium.org/blink/trunk@19 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-27 23:54:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d3533786a1349f68e57baef073cb28c51430f5f6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000501s2xzlaojx1', 1, e'Added files for new build system


git-svn-id: svn://svn.chromium.org/blink/trunk@18 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-27 23:50:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/478e5dd050f9118950baa9a67219c55ad518924a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000601s2r3lm2q2v', 1, e'Changes to get some of khtml/dom files to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@17 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-27 19:11:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/69e7cc113c49dda81852c0d649fc2fa024076908');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000701s247tscb3z', 1, e'Added file


git-svn-id: svn://svn.chromium.org/blink/trunk@16 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-27 19:09:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f1655840571415e2d5944282ca8593a4067522bd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000801s2ws0142ez', 1, e'gramps can\'t type


git-svn-id: svn://svn.chromium.org/blink/trunk@15 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-27 13:08:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8749fc165e5f67bd76ce4adf23a8edd47a5e98b4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000901s2emkmvb20', 1, e'Added skeleton header files


git-svn-id: svn://svn.chromium.org/blink/trunk@14 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 22:02:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b42fc3f2bf58682267eec41c6bbb252531127eaa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000a01s2rmgsildg', 1, e'Moved file to sub-directory


git-svn-id: svn://svn.chromium.org/blink/trunk@13 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 21:53:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ddeabec46bc9b9d4e7290a4d22b10fa8a335c993');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000b01s24ch260yg', 1, e'Added bison-generated grammar files


git-svn-id: svn://svn.chromium.org/blink/trunk@12 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 18:02:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2f64ff26432463f9aaf972d0c0709e3c4ea01942');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000c01s2hku572g1', 1, e'(Really) Removed bison-generated grammar files


git-svn-id: svn://svn.chromium.org/blink/trunk@11 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 18:01:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9ae5bcf076fc94d1d14625b33b0e7ee97ec67cd3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000d01s2rxjbirlf', 1, e'Imported top-level documentation files from kde-2.2 distribution


git-svn-id: svn://svn.chromium.org/blink/trunk@10 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 17:44:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5ba11d0cae4e7380b6b93264a8ca1392a0117d51');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000e01s2ub910bpc', 1, e'Added skeleton header files


git-svn-id: svn://svn.chromium.org/blink/trunk@9 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 17:22:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/343edd1df9e512b608045c5232728e0011a4ba7a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000f01s21ajnns8h', 1, e'Added LICENSE file


git-svn-id: svn://svn.chromium.org/blink/trunk@8 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-24 17:17:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/474d74f772265b16dff499b31842c6e60b1376fd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000g01s2h4iymhak', 1, e'Imported sources from kde-2.2 distribution


git-svn-id: svn://svn.chromium.org/blink/trunk@6 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-24 14:24:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/71a6669e8fd20fbe0ca79876a67a07b4b1b78855');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000h01s2gqy4xu4e', 1, e'Initial revision


git-svn-id: svn://svn.chromium.org/blink/trunk@4 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-24 14:24:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d869b93fe74f4d6cb2dd6f6c3e9bf9daee39ba19');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000i01s2ngp8houu', 1, e'Added .cvsignore file


git-svn-id: svn://svn.chromium.org/blink/trunk@3 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-24 14:21:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4214d2207a30847c6e5cd2fd9413e29697168d34');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000j01s2luh5fd1p', 1, e'Added .cvsignore file


git-svn-id: svn://svn.chromium.org/blink/trunk@2 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-24 14:11:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/de9429c7a6064a76f5e98f412b7ee785c974c18b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu29g000k01s22rvjkk5m', 1, e'New repository initialized by cvs2svn.

git-svn-id: svn://svn.chromium.org/blink/trunk@1 bbb929c8-8fbe-4397-9dbb-9b2b20218538', '(no author)', '2001-08-24 14:11:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a5068f5fa11005232bc4383c54f6af230f9392fb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000l01s2smwh3hbd', 1, e'More changes for compilation


git-svn-id: svn://svn.chromium.org/blink/trunk@53 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-30 17:48:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/75aa22db8f77027574a6ff4228e2fee5b0ddccbe');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000m01s2gupzn6hf', 1, e'Finished work getting khtml/ecma to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@52 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 16:00:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/acc95c1cb697c4b0e0227ef18a48e5fb3244e9f0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000n01s2epfg4dfg', 1, e'Modified for this directory


git-svn-id: svn://svn.chromium.org/blink/trunk@51 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 16:00:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/025b61971527277524f21235c965c9cfef65d980');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000o01s2gmixgtto', 1, e'Changed definitions of SIGNAL and SLOT macros to be strings


git-svn-id: svn://svn.chromium.org/blink/trunk@50 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 15:47:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dde3be301c60986b0854b2c62be785aa31cca591');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000p01s2ixqhjc7a', 1, e'More compilation fixes and anal-retentive tweaks


git-svn-id: svn://svn.chromium.org/blink/trunk@49 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-30 07:43:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/60fde6e2791a23b8b91fa7733a7b692923744364');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000q01s2y22ezi7z', 1, e'Imported sources from kde-2.2 distribution


git-svn-id: svn://svn.chromium.org/blink/trunk@48 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-30 05:34:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/21e8c7dd0ba1b2bafbceac7cfa2e161341070a5d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000r01s2iy0adbau', 1, e'In process of working on khtml/ecma....


git-svn-id: svn://svn.chromium.org/blink/trunk@47 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 00:04:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9d812c9552d200d8e6b04023594d5c49589c8102');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000s01s27d7i1a7n', 1, e'Added these file to help khtml/css to build


git-svn-id: svn://svn.chromium.org/blink/trunk@46 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 19:11:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e462e920439b251fa46ac4af656bee1e7ca12803');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000t01s2nby6yabg', 1, e'Finished getting khtml/css to compile
Added khtml/css to build system


git-svn-id: svn://svn.chromium.org/blink/trunk@45 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 19:10:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bb88b6da934fd987575d61d9d1be95f270a13010');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000u01s2pozyqmff', 1, e'Added names of files generated by makeprop and makevalues tools


git-svn-id: svn://svn.chromium.org/blink/trunk@44 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 19:01:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6958f9fa4131bdcca018dbe4c379962b81a4780e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000v01s23ix5po8c', 1, e'Added make system support files


git-svn-id: svn://svn.chromium.org/blink/trunk@43 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 19:00:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a68ec8448689ed409b6a7d890391c4e08419ec9c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000w01s2rn06li3h', 1, e'Replaced tabs with spaces
Added khtml/xml to top-level Makefile


git-svn-id: svn://svn.chromium.org/blink/trunk@42 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 16:54:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b98cb228710ec0afcd2f0470fc43140772c8c0c9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000x01s26h9cskwi', 1, e'Finished getting khtml/xml to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@41 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-29 16:33:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1781c210539c7574a70b1528609ebf052e883042');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000y01s22licym1r', 1, e'Added predeclaration of KCharsets


git-svn-id: svn://svn.chromium.org/blink/trunk@40 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-29 15:43:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2fda45427d51c8c249edf5a9003dc298d8dad6dd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1000z01s2dk1ux0y8', 1, e'More compile updates


git-svn-id: svn://svn.chromium.org/blink/trunk@39 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-29 15:17:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73f875c34f6a24358b5ae624ca9269a763e2c9c0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001001s2sbj11drq', 1, e'Added another generated file


git-svn-id: svn://svn.chromium.org/blink/trunk@38 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-29 00:59:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/20542c702331a922fdb7e7daa1ea96f8f3bc8a57');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001101s2iamjhhoz', 1, e'More hacks....now most of the way through khtml/xml


git-svn-id: svn://svn.chromium.org/blink/trunk@37 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 23:16:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/743006002f61cba791321d79e1ea824f28761aad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001201s2jp1ca8jl', 1, e'Added top-level .cvsignore file


git-svn-id: svn://svn.chromium.org/blink/trunk@36 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 21:14:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/404c61f9844ded00bb1f7c84d08afa95f56c574d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001301s2jlussiuk', 1, e'More general modifications to the build system.
Added support to the build system for the khtml/dom directory


git-svn-id: svn://svn.chromium.org/blink/trunk@35 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 21:13:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f203ad2c6908e7296e08fbfcaeec97b47134219d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001401s2fjmfrfn1', 1, e'Added more files to ignore


git-svn-id: svn://svn.chromium.org/blink/trunk@34 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 21:10:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d81266fe95aaecef849a591a8a28e8596b7c40ea');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001501s2udyvf0zg', 1, e'Re-commit of original Makefile.in


git-svn-id: svn://svn.chromium.org/blink/trunk@33 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 21:10:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dbb7796c67cfecdc89b576c506e22494606ef309');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001601s2492orrl8', 1, e'More whacks to get khtml/dom to compile, and, by gum, now it does!


git-svn-id: svn://svn.chromium.org/blink/trunk@32 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 20:21:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/77a0236e400391b33102611f8924a91875403317');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001701s2udsc32eu', 1, e'Changes to get khtml/css/cssparser.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@31 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 20:19:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/50eac78db7fa0fa0cdfc39d505d85ee9acce593b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001801s267yt1c8s', 1, e'More changes to get khtml/css/cssparser.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@30 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 19:40:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/afe7b012759fcc5b4c26b9f97428782d3e03647d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001901s2hfjmiirh', 1, e'Another batch of changes for moving forward in khtml/dom


git-svn-id: svn://svn.chromium.org/blink/trunk@29 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 18:21:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d4bf14deaec6d26d72c5777baddee3cdcce82157');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001a01s26lvji1zw', 1, e'Changes to get khtml/css/cssparser.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@28 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 18:12:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/60c4c969f7c1698cfee6d11f449dfa712671d31b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001b01s24qcr28cq', 1, e'Changes to get khtml/css/cssparser.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@27 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 18:03:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c2dacd4a139c49415a1891634789792800e10541');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001c01s2u7fx3mrj', 1, e'Added a bunch of extra declarations, includes, etc. in the process
of getting khtml/dom to compile.
Several new files were added as well.


git-svn-id: svn://svn.chromium.org/blink/trunk@26 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 17:43:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a9c154b4eac6adcfad86faadf49add4873be507a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001d01s2g70nbpu5', 1, e'Added a bunch of extra declarations, includes, etc. in the process
of getting khtml/dom to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@25 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-28 17:41:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d8d8c8f2e32229c45a3ca97478b4c66d0fbb809f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu3n1001e01s2qqhtaiqd', 1, e'Added include files to get khtml/css/cssparser.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@24 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-28 17:34:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9a138502f8633d076771f3e434088c942e87126f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001f01s2edkulh77', 1, e'Files added while getting khtml/rendering to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@83 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 22:55:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/713fff6eccce4063b9f2de0e6e885c300de038fd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001g01s2kxw95prd', 1, e'Many changes as I progress through khtml/rendering


git-svn-id: svn://svn.chromium.org/blink/trunk@82 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 22:53:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ba809591961cfdc659aebe06e22f5b44741fb511');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001h01s2bfmddc15', 1, e'Added file to get khtml/khtml_event.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@81 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 21:42:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/486e0c9d4bd453c8a3b6637bc4f157268a5069d9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001i01s29xfi390z', 1, e'Small additions to ignore files


git-svn-id: svn://svn.chromium.org/blink/trunk@80 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 19:06:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cb480fc8ae6cd046454de38aa71721edd467e71a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001j01s2rttttkg7', 1, e'Added make system support to khtml/html
Various small fixups to keep the tree green


git-svn-id: svn://svn.chromium.org/blink/trunk@79 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 19:04:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9d0c22647a315c63c46929a3642a98f0c0fdca01');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001k01s21w1a151l', 1, e'Made QVector a subclass of QCollection in order to pick up desired
functionality, specifically the setAutoDelete method.


git-svn-id: svn://svn.chromium.org/blink/trunk@78 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 18:44:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ee3cda8a6ab36be45a9e66378369138a9fb18166');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001l01s24gow2qb0', 1, e'Still more compilation updates


git-svn-id: svn://svn.chromium.org/blink/trunk@77 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 18:43:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b95dfec7cfbe834a48745761e424d963274f33ab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001m01s2nuami963', 1, e'Added count to iterator


git-svn-id: svn://svn.chromium.org/blink/trunk@76 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 18:35:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5d632ae48de8cae297812a9fb4f88c35e81a409e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001n01s20uime3wa', 1, e'More workaround Hell for gramps


git-svn-id: svn://svn.chromium.org/blink/trunk@75 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 18:30:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e876d1470960f7f8e9ad0b9db44efe3f0ede9d41');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001o01s2dbg0ncxs', 1, e'Fixes for khtml/html, specifically html_formimpl.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@74 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 18:27:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/56b643ae56e4863bb0216a7784302245609a5437');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001p01s2hsoxrn2x', 1, e'More tweaks to the build system


git-svn-id: svn://svn.chromium.org/blink/trunk@73 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 16:51:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df0b023ce9661c13ce775a5e2f95a33579654964');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001q01s20zhis19g', 1, e'Added *.dep ignore rule


git-svn-id: svn://svn.chromium.org/blink/trunk@72 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 16:45:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/da8643f1c1aeff809a4b7a3e383a802450e95038');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001r01s2psd57813', 1, e'Added some more complete dependency checking to the build system


git-svn-id: svn://svn.chromium.org/blink/trunk@71 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 16:45:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/356974293a8012fb54a71b8b8fffc4c1fc2d3d87');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001s01s2rfvmslfb', 1, e'Still more changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@70 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 03:42:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/82ede60040f31e2ceb464a7cb80e8b4eff7ad05f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001t01s2d8og9jc5', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@69 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-01 01:20:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/45bd600caf981c42eeeb3343b70d9782dbb90da2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001u01s2i640jms0', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@68 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-01 00:52:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d1aeaa080e67c686fbfff3a13d677a6bbbf4cb6f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001v01s2tksmoc5b', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@67 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 23:56:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d736ccf0cc918925cba01c3c0650090c87d5beb1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001w01s21y4h98jg', 1, e'Minor changes to the build system:
    - Sub makefiles now pickup configure-generated compiler flag settings correctly
    - Some cosmetic updates to echo output


git-svn-id: svn://svn.chromium.org/blink/trunk@66 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-31 22:36:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7492c2c9969a3c27148ebdf428f52a897a686fe4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001x01s2tzd9k45x', 1, e'Added top-level setup target


git-svn-id: svn://svn.chromium.org/blink/trunk@65 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-31 21:47:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d97d5ddc0201ed31560e623dc4841f8fdebc777a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001y01s28h9jq0t7', 1, e'Added file


git-svn-id: svn://svn.chromium.org/blink/trunk@64 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-31 19:33:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ba71b6e44b6980926a8485db11b7e93324d3f1ac');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a001z01s2wrk96xrz', 1, e'Finished getting khtml/java to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@63 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-31 19:32:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/38c4df1b56d07e5e6c8f9f3eaaa58e49a17c4f3a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002001s2im5lko0i', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@62 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 19:24:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ef491f9f1d15f645fe2b1050ebc0eb8e306e6819');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002101s2v7irwruu', 1, e'Oops!


git-svn-id: svn://svn.chromium.org/blink/trunk@61 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 19:23:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c5eef0fb98c26f3598cc3cd38566f9d85ebe18b2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002201s2uc7vxsu3', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@60 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 19:18:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9d1fadb922f9d498d2b420b4ede64d155c54c7f3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002301s2e5h32360', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@59 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 16:32:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/956b29f5eef30d282eea40da59d5cfd886882414');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002401s2dv37n75k', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@58 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 15:38:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7ff5a887686f6162d8076afde25d52a9491268a3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002501s2ktd5amwd', 1, e'More changes to get this beast to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@57 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 14:56:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8a0315279a980557e29d840fe3f5b7294a7e6463');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002601s2k59ah8s1', 1, e'Compilation updates


git-svn-id: svn://svn.chromium.org/blink/trunk@56 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-08-31 00:57:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/347a50daf4c2a27eae185dfc5e2c372cb64c6193');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002701s2jfhczers', 1, e'Fine tune of commit for khtml/misc


git-svn-id: svn://svn.chromium.org/blink/trunk@55 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 22:48:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8923b85f5f5a2bef883f88a04fa3bea0c26fbbeb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu70a002801s2rkfnyy85', 1, e'Finished getting khtml/misc to compile ... that was a bear 8-/


git-svn-id: svn://svn.chromium.org/blink/trunk@54 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-08-30 22:42:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7c70e5c9598e0e5db242eff5cc0a408942e25686');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002901s2xstgh8cp', 1, e'Functionality moved to kwq/KWQStrList.h


git-svn-id: svn://svn.chromium.org/blink/trunk@113 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-06 14:06:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5958ee60e8054907469dae853ee5a18257f2b551');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002a01s2difb3vi7', 1, e'Some small tweaks to the make system to prevent spurious remaking of Makefile.dep


git-svn-id: svn://svn.chromium.org/blink/trunk@112 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-06 14:03:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/10fc1c0f5d4003f928c0ba38a2afc122d1dac17b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002b01s23jdpnend', 1, e'Fixed the top-level #define directives for the header files


git-svn-id: svn://svn.chromium.org/blink/trunk@111 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 23:59:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c378b94578d29ae837fce1a6bee5283974a75094');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002c01s2x2nmu8qa', 1, e'Moved some more files around to remove dependencies on all files not explicitly included by KDE/QT


git-svn-id: svn://svn.chromium.org/blink/trunk@110 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 23:53:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b8cfae94502e0189246a8484877c9f90ebc925fb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002d01s2rni558ao', 1, e'Various changes to remove files that are not explicitly included by KDE/QT code.


git-svn-id: svn://svn.chromium.org/blink/trunk@109 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 22:57:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2341886bd6b39a472428bba3e6431df0eaf9989f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002e01s2nmp5ejm9', 1, e'Cleanups on header files - all of these files now compile in a test file by themselves


git-svn-id: svn://svn.chromium.org/blink/trunk@108 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 20:18:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/710b249a95e428e8840133aa8e42e81380d7bb6d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002f01s2a4qvwcil', 1, e'Some small code cleanups
Removed a couple of files that we don\'t need, rolling their functionality into files that are keepers


git-svn-id: svn://svn.chromium.org/blink/trunk@107 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 18:10:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/302998e441e40d2a52d04fa6c5058900a255694b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002g01s2ikjsrc2k', 1, e'Finished in khtml/rendering directory


git-svn-id: svn://svn.chromium.org/blink/trunk@106 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 17:32:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e709a10634455404e85f0177ccfc876e67bfc7fe');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002h01s25fk1m2hs', 1, e'Added drawPolyline member function


git-svn-id: svn://svn.chromium.org/blink/trunk@105 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 16:32:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f4f79cf07216af9692fb4695bd9d12daed806559');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002i01s2emcibjml', 1, e'Added new QPointArrary constructor and did some mangling


git-svn-id: svn://svn.chromium.org/blink/trunk@104 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 16:28:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d721dd081ca8f4ef92a70c892e1bcef73dc07c2b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002j01s2yobxmogx', 1, e'removed typdef; moved to kwqdef.h


git-svn-id: svn://svn.chromium.org/blink/trunk@103 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 16:17:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8a4d14ac19cf039d5901c77897da902016b67fdb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002k01s2zlsll2x5', 1, e'Additions to get khtml/rendering/render_frames.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@102 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 16:14:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/65df3b8fdb6eba55172e83f649bca925d7cf914b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002l01s2bn1yalli', 1, e'Added setBrush, drawEllipse, and drawArc function members


git-svn-id: svn://svn.chromium.org/blink/trunk@101 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 15:53:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/921bc3b69cb52698a9cc2469006d927e74194a9c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002m01s2apxdfvjp', 1, e'Added build system file


git-svn-id: svn://svn.chromium.org/blink/trunk@100 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 15:50:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a61d48197debc3d33a494d7cb64a9266c51dc529');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002n01s2yl8rrm1o', 1, e'Finished with getting khtml/rendering/render_form.cpp to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@99 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-05 15:49:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8321562e4802de988e771e3399c79800f30517be');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002o01s2j7prbfuj', 1, e'Added ascent member function


git-svn-id: svn://svn.chromium.org/blink/trunk@98 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 15:37:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f980580b7a97d0e6f211fec71cbd5c3b46b1f0b9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002p01s2s10ni1v0', 1, e'More compilation changes


git-svn-id: svn://svn.chromium.org/blink/trunk@97 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 14:20:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4d6daed4e9480596190f2a6ff94fb1bb49b99d60');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002q01s2yk0jhv1s', 1, e'Added isValid, setWidth, and setHeight member functions


git-svn-id: svn://svn.chromium.org/blink/trunk@96 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 13:43:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0b77aa6ffaad522074654e500d5a1fbd58b6f55b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002r01s2nu2fje8x', 1, e'Added setWidth and setHeight member functions


git-svn-id: svn://svn.chromium.org/blink/trunk@95 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 13:42:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b07e09657917fd183ff39b2a2d7d8fd14fb5ae63');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002s01s2behbsvlt', 1, e'Added contentsWidth function member


git-svn-id: svn://svn.chromium.org/blink/trunk@94 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 13:35:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/04dec3f1c9668fd0b2518779f5c4a281a82f222a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002t01s2pp4ailwu', 1, e'Added color and normal function members


git-svn-id: svn://svn.chromium.org/blink/trunk@93 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-05 13:29:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b0ed081c6e08b8a5325d351fd93b8fdc54ff9d85');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002u01s2cohqwphg', 1, e'More enhancements and additions to get khtml/rendering to compile


git-svn-id: svn://svn.chromium.org/blink/trunk@92 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-04 23:57:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fbaad27892bf918f676026a00223b0c289df87cd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002v01s2wagfaxo1', 1, e'Added another createNewWindow function


git-svn-id: svn://svn.chromium.org/blink/trunk@91 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:54:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b2ef3498a79eb9093de5e4a61a85e6a6d5a699ee');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002w01s272uvy74k', 1, e'Added Box constant


git-svn-id: svn://svn.chromium.org/blink/trunk@90 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:50:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/15e249c98a76634c497d96dae65e8f67b53039e1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002x01s29vy61s59', 1, e'Now inherit from QFrame, added scrollbar support


git-svn-id: svn://svn.chromium.org/blink/trunk@89 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:49:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa4c76fda5d68b4de74d08d35aec0b48f1fdf36b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002y01s21btbzkpz', 1, e'Added NoFrame constant


git-svn-id: svn://svn.chromium.org/blink/trunk@88 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:38:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73099168f8f79473ddd42962a4fcab922a867948');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862002z01s2tl1gftar', 1, e'Added setCursor member function


git-svn-id: svn://svn.chromium.org/blink/trunk@87 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:30:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2f9b38dc1c84536d9675b187c3332a37bf94d44e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862003001s2itoxw8hl', 1, e'Added cursor support


git-svn-id: svn://svn.chromium.org/blink/trunk@86 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:25:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/751c021ff473e70f997de00b37bf605afb817fe8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862003101s2p8i91b93', 1, e'Added QCursor static constants


git-svn-id: svn://svn.chromium.org/blink/trunk@85 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:20:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bda72516f18621b4287cfa79b769649ec777a9be');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsu862003201s2wfhvr4hl', 1, e'Include qcursor.h to workaround bug in khtml/rendering/render_frames.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@84 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-04 23:09:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/06bf49b15cbd17aa1226fcb4534f18bdaf1039c5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003301s2mh841uz9', 1, e'Added rules for .mm


git-svn-id: svn://svn.chromium.org/blink/trunk@143 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-20 02:02:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/97e5fa3bbf429fff99cb555dd69f670615b51ff3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003401s28rb47dra', 1, e'Initial makefile.in


git-svn-id: svn://svn.chromium.org/blink/trunk@142 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-20 02:01:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/60e64715d87d476a8150aa292908fe420791f0db');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003501s2zorshpcm', 1, e'Added partial QChar implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@141 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-20 01:32:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8e974d60b1304f4c68e212089a184bd0533888a0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003601s2narosskt', 1, e'Added image tests.


git-svn-id: svn://svn.chromium.org/blink/trunk@140 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-20 00:17:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/add0aa2fa015824079ed786f4c5d8168cbe0ac9f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003701s2n4ixlvl7', 1, e'Started making modifications that will move us towards a working Qt
layer. This includes adding many temporary _q<foo> files that are mostly
"borrowed" from Qt for the time being. So far, some basic leaf classes,
and some string stuff is ready and working.

These tests begin to support this effort.


git-svn-id: svn://svn.chromium.org/blink/trunk@139 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-19 22:33:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aa670d1a0262fa01601acb0945cc30bef13ffb98');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003801s2dxgn1vy8', 1, e'Added


git-svn-id: svn://svn.chromium.org/blink/trunk@138 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-19 22:32:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2d6f3798e399d9eb186eaaa6675a45e3386e1391');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003901s2445db3fw', 1, e'Started making modifications that will move us towards a working Qt
layer. This includes adding many temporary _q<foo> files that are mostly
"borrowed" from Qt for the time being. So far, some basic leaf classes,
and some string stuff is ready and working.


git-svn-id: svn://svn.chromium.org/blink/trunk@137 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-19 22:31:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dd698a631de134879db80049357cb91e320f5a82');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003a01s2sp36ybpe', 1, e'
C?\\004?\\004?\\004?\\001?\\016?\\016?\\014?\\014
VS: ----------------------------------------------------------------------


git-svn-id: svn://svn.chromium.org/blink/trunk@136 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-19 21:12:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8009453736a9034a201db8bc0e1e61787ff36726');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003b01s2oqud27co', 1, e'Merged changes from KDE 2.2.1 distribution


git-svn-id: svn://svn.chromium.org/blink/trunk@135 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-19 15:53:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e67376dc153fa41eb56149b8ed12c508c17cc161');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007x01s2xvy83u8u', 1, e'Many changes


git-svn-id: svn://svn.chromium.org/blink/trunk@270 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-04 03:08:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/826566982781d446888d2b82dbdbf8aab7b2511b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003c01s2qrfs1qbk', 1, e'Added contentsHeight function for KDE 2.2.1 compatibility


git-svn-id: svn://svn.chromium.org/blink/trunk@134 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-19 15:45:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4b64fefd4fef47a8df08005a759102f9273b1915');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003d01s2bg0bqcgm', 1, e'Added qRgba and rgb functions for KDE 2.2.1 compatibility


git-svn-id: svn://svn.chromium.org/blink/trunk@133 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-19 15:44:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/941c2af3cda4489d770fc9ea0bce9e4f81d1021f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003e01s22j1h5yp6', 1, e'Added QConstString implementation and some fixes


git-svn-id: svn://svn.chromium.org/blink/trunk@132 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-19 02:16:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fbedbd225d3c69f8bc1dae2e04066a201fe99ac6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003f01s2ast7otyu', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@131 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-19 01:42:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6642c3c32af4f5fd1dcf88f77eaecce2e27c6053');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003g01s2nv9yh6sg', 1, e'Files for the kwq test app


git-svn-id: svn://svn.chromium.org/blink/trunk@130 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-19 01:41:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6eab4dadd63754108e4f4999875e8027fbdfb6a9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003h01s2kp541fhv', 1, e'This Makefile broke, by including css_extensions.o. How did this happen?


git-svn-id: svn://svn.chromium.org/blink/trunk@129 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 23:50:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2aacf198b30f624c505d51caf0f5b3eeaf649209');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003i01s2g5x80afp', 1, e'Finished initial code clean up. This includes:

	- Adding a no-arg constructor for every class that didn\'t have one
	- Adding a destructor for every class that didn\'t have one
	- Adding a private copy constructor for every class that didn\'t have one
	- Adding a private assignment operator for every class that didn\'t have one
	- Pretty formatting


git-svn-id: svn://svn.chromium.org/blink/trunk@128 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 23:46:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/05df70f02ea48ebf4a75ae262c7572e934dfba2b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003j01s21hmxik8v', 1, e'More header cleanups


git-svn-id: svn://svn.chromium.org/blink/trunk@127 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 19:19:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df15aa6b39f50b1792ab4feea3dc593646f14042');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003k01s2kj6t2zmn', 1, e'More work on code cleanup


git-svn-id: svn://svn.chromium.org/blink/trunk@126 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 19:05:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/db7ac4e2c28bef4a6eae5c4dd94b5a80b9c29a4b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003l01s2ylvnwn03', 1, e'Hack to workaround name collision with Mac Rect and Boolean types


git-svn-id: svn://svn.chromium.org/blink/trunk@125 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-10 18:45:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/65e059b51e4718a18f1fdd87bb6519907e5fecbd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003m01s2xv6xae4v', 1, e'Updated the make system with improved handling of dependency generation


git-svn-id: svn://svn.chromium.org/blink/trunk@124 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 18:09:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fe599386e0cebe6240f43a4e10438168a418d2aa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003n01s2jptvf2c5', 1, e'Hack to workaround name collision with Mac Fixed type


git-svn-id: svn://svn.chromium.org/blink/trunk@123 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-10 17:53:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/be4e797b6b58a3c992e915ffd23d084c1c1ccdda');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003o01s2y7ey0xzf', 1, e'Fixed dependency rules on generated files


git-svn-id: svn://svn.chromium.org/blink/trunk@122 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 17:19:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d92ee8fb6d9f7e6e35e71b8b3ef9696988063b94');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003p01s206mcnm6y', 1, e'Added file


git-svn-id: svn://svn.chromium.org/blink/trunk@121 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-10 16:28:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/618871d681cb05123a86170588865f106912b02d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003q01s2ur7kue1y', 1, e'Begin implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@120 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-10 16:27:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a04b80fef83bcc1244fe45116f57d4beb740749b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003r01s2507tzoa3', 1, e'Touched other files, annotating and formatting classes


git-svn-id: svn://svn.chromium.org/blink/trunk@119 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-10 16:15:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cffe3416072ad5a170619ec6533269500083ba88');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003s01s287qbomvg', 1, e'Changed KWQScrollbar.h to KWQScrollBar.h


git-svn-id: svn://svn.chromium.org/blink/trunk@118 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-10 15:17:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fb20d3c3ec8fa39cec4c6860111af5d4b953e182');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003t01s274jcfak7', 1, e'Added support for khtml/misc/loader_jpeg.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@117 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-07 21:56:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ce3655a171f73db021872ed18e03aa26b9568904');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003u01s2da72e5a9', 1, e'Removed file.


git-svn-id: svn://svn.chromium.org/blink/trunk@116 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-07 16:12:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/238cc39bbcc1b0d1f34f0f72bb48cd540d530156');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003v01s2k0eqzq4g', 1, e'Some more cleanups having to do woth constructors, destructors, etc.


git-svn-id: svn://svn.chromium.org/blink/trunk@115 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-06 23:16:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d44145f49c3c6ba86529d4dcea6c236e9b8857dd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsubp8003w01s220rrrcgu', 1, e'First pass at code cleanup: Added constructors, copy constructors,
destructors, assignment operators, etc.


git-svn-id: svn://svn.chromium.org/blink/trunk@114 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-06 22:11:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/659554f787221310a12bdeee32fcef46055696cc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71003x01s2uqycgztx', 1, e'Fixed some bugs in the build, and in the test files.


git-svn-id: svn://svn.chromium.org/blink/trunk@174 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 21:17:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/98d24c8dcd470a2321b815652890e6f483ee1c76');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71003y01s2k7h8d4tj', 1, e'Added some more tests.
Added some more collection implementation files.


git-svn-id: svn://svn.chromium.org/blink/trunk@173 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 21:10:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e795afaa0584babce73adbafb7844a8d246ccc5a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71003z01s2h4wjorh7', 1, e'Did some more work on some basic Qt tests. Fixed a couple of bugs
I discovered in our implementations.


git-svn-id: svn://svn.chromium.org/blink/trunk@172 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 21:09:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9c3048eb1f0855094b41904ea54ae62ebd705a4a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004001s2cdnavvix', 1, e'Implemented assignment operators and remaining constructor


git-svn-id: svn://svn.chromium.org/blink/trunk@171 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-21 18:12:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/61d9c92050bc1c36f9a1bc46edc220bd59bb6228');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004101s2xg9p4lrm', 1, e'More anal-retentive tweaking


git-svn-id: svn://svn.chromium.org/blink/trunk@170 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-21 18:11:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4b797b004d64466fbcdc28cb1156bd16e57f45c3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004201s2sxls43s5', 1, e'Fixed catching of status code from forked process. Sometimes
you just gotta read the man page!


git-svn-id: svn://svn.chromium.org/blink/trunk@169 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 16:56:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ef9769068e755dfd1f4f54f1b0600f8f819b968b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004301s2atm6ah2s', 1, e'Modified some ignore rules


git-svn-id: svn://svn.chromium.org/blink/trunk@168 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 16:45:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b24f38dc39d222ef46b095df6aaa525a2b94dab3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004401s2peyqthmi', 1, e'Started to add support for unit tests. This includes:

	- A test harness program
	- Some specific tests for our Qt class implementations


git-svn-id: svn://svn.chromium.org/blink/trunk@167 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 16:43:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f34354e7d0006460a5b03d75509f5ba300f7f8e2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004501s26fda59l4', 1, e'Bug fixes resulting from writing qpoint unit test


git-svn-id: svn://svn.chromium.org/blink/trunk@166 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-21 16:27:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dfcfe7d44c326a4e20c7ec54dd87689f14a35b89');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004601s29lru6xcf', 1, e'Anal-retentive tweaking


git-svn-id: svn://svn.chromium.org/blink/trunk@165 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-21 01:37:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a08c39cfea86b9e34f10f91c509ce1eb452d546d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004701s2w6cfisgg', 1, e'Moved QChar implementation into new KWQChar.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@164 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-21 01:36:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/86e4d7fe4913995b4c57b1d8c01aa84e4d50c0be');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004801s2ly6mb6e3', 1, e'Created from QChar implementation in KWQString.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@163 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-21 01:35:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a2c8740b86151bff6959962ca6f5e234debea286');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004901s29z5czicn', 1, e'Completed QChar implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@162 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-20 21:18:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0b42530fa3ffe1879e75627329d7557db68b58d4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004a01s2n4e01ztk', 1, e'Some more small cleanups to get building with and without _KWQ_COMPLETE_


git-svn-id: svn://svn.chromium.org/blink/trunk@161 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 20:15:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/44cf6bf4570c2a5326a181dd1fee08df0fc10479');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004b01s2c53st1k9', 1, e'Made some changes and confirmed that the tree builds when _KWQ_COMPLETE is
defined *and* also when it isn\'t


git-svn-id: svn://svn.chromium.org/blink/trunk@160 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 18:40:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/523c1851abdcc4b031f15d0bd17f75b2d91608b0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004c01s2qchngxrx', 1, e'Still more QChar implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@159 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-20 18:17:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/18dd4d8840875edffe188c14171cda493f0c8608');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004d01s22tsj721p', 1, e'Some fixes to repair breakage resulting from starting to add some of the
KWQ_COMPLETE implementations


git-svn-id: svn://svn.chromium.org/blink/trunk@158 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 18:02:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6dac847a7a8e66c4ff599032d5d265f2c6e1d33a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004e01s291hqmamh', 1, e'Modified the configure system to add config.h support for Q_NO_TEXTSTREAM
symbol


git-svn-id: svn://svn.chromium.org/blink/trunk@157 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 17:00:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e824b6fe888ceb670bd009b29581ec0a94a08279');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004f01s2oif4ch61', 1, e'Added and modified a couple more classes in _q* land


git-svn-id: svn://svn.chromium.org/blink/trunk@156 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 16:59:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f31f657cb7a308da6c6adc8a8c6c3b1f403c02f2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004g01s2hlz2ias4', 1, e'Modified configure and make system to include support for switching
the following defines in config.h via configure options:
	- _KWQ_COMPLETE_
	- _KWQ_IOSTREAM_
	- QT_NO_DATASTREAM
	- QT_NO_TEXTCODEC

Also did some cleanup on the doc generated when you do a `configure --help`


git-svn-id: svn://svn.chromium.org/blink/trunk@155 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 16:19:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aaa14380d30661e540e06671a4651f09970fcbf7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004h01s2hmgk0rpm', 1, e'Added QRegion support


git-svn-id: svn://svn.chromium.org/blink/trunk@154 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 16:16:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/21d563c61220dab63e73c4980157302de7fc6031');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004i01s2jjj9v0gz', 1, e'More QChar implementation and spelling fixes


git-svn-id: svn://svn.chromium.org/blink/trunk@153 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-20 15:53:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c636dfb889a50cb0672b676dbc0ee3cf267909cc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004j01s216ttdre6', 1, e'Tweak to handle skipping the compilation of javaembed.cpp now that
this skipping is no longer handled by MakeSystemChanges.sh


git-svn-id: svn://svn.chromium.org/blink/trunk@152 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 15:05:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/acc44aa95b578b0d89d5f6a703ee7344b5764fd0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004k01s2uynoeral', 1, e'Added new Makefile.in files for the updated build system


git-svn-id: svn://svn.chromium.org/blink/trunk@151 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 14:56:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/09b7953561740be5b833e355e17dca632ca3161a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007y01s27x9d911o', 1, e'Stubs added.


git-svn-id: svn://svn.chromium.org/blink/trunk@269 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 02:02:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1d817353ffcc439ff07da5965e65ee1203947c63');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004l01s2h8herbhq', 1, e'Added a few more files in the QT quick and dirty implementation effort


git-svn-id: svn://svn.chromium.org/blink/trunk@150 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 14:51:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/db9ca9adf8baea77cd468791bee6d83ee878074a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004m01s2d2obwe3z', 1, e'Various tweaks and fixes to the make system and a couple of assorted files
in order to make the tree build again.


git-svn-id: svn://svn.chromium.org/blink/trunk@149 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 14:49:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d8c4db381c7f3d023eceec9fea6e347330e59ed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004n01s265029ljn', 1, e'Removed recursive descent into tree to run MakeSystemChanges.sh script.
This is no longer needed given that we have removed the KDE make files
from our tree.


git-svn-id: svn://svn.chromium.org/blink/trunk@148 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 14:28:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/868ebc8aed9a8a07a4a400f7104ae2597de22c7e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004o01s2h24gxvyf', 1, e'Moved the make system so that it no longer includes elements from
the KDE build system. This involved removing the following files from
each directory where they appear in the KDE distribution:

	 - Makefile.am
	 - Makefile.in
	 - configure.in.in

I have also removed the special MakeSystemChanges.sh files from the tree
as they are made obsolete by this change.

It should also be noted that any Makefile.in files that remain are "ours"
and clobber the ones that KDE had.


git-svn-id: svn://svn.chromium.org/blink/trunk@147 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-20 14:26:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/88a272f7459f02971fcfad2c1cb18d7303642a52');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004p01s2t48l8f3f', 1, e'Added src/kwq


git-svn-id: svn://svn.chromium.org/blink/trunk@145 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-20 02:05:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6051ee8c7af4e3ccb8772eb03378a9db48414bab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsue71004q01s2talin83a', 1, e'Added stub files for rendering


git-svn-id: svn://svn.chromium.org/blink/trunk@144 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-20 02:04:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6de52bda4252e6c710cb0abb8df08ec38c5e2940');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004r01s2qkx7qefe', 1, e'Removed at from qptrdict.h as it doesn\'t belong there


git-svn-id: svn://svn.chromium.org/blink/trunk@204 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 21:58:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4743166c758edf7809b9c1b9d9b8996cb1b0b8d2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004s01s2rhzc079n', 1, e'Added tests for isEmpty, cleaned up output for qstack-test


git-svn-id: svn://svn.chromium.org/blink/trunk@203 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 21:07:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/285c9dfdfe76839dc2aa7456a84dede406b76ab7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004t01s2tcnwivpq', 1, e'Added tests for count, sort, at insert, remove, current, last, first and more to qlist-test


git-svn-id: svn://svn.chromium.org/blink/trunk@202 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 20:26:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fe9646c3dd0d513dea784d6622ccee1009e03e86');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004u01s268lmsbe8', 1, e'Added tests for count, = and clear methods to qdict-test.


git-svn-id: svn://svn.chromium.org/blink/trunk@201 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 18:06:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f588b35467a253d61304bade9d780f513e76ec5d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004v01s2oi7dx4v6', 1, e'Added tests for at and duplicate to qarray-test. Commented out uneccessary tests.


git-svn-id: svn://svn.chromium.org/blink/trunk@200 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 17:49:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/630295288542ff0d27c99c496d9b0804ae9d1fa0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004w01s2vlw46z15', 1, e'Reduced scope of test to what is actually implemented in KWQChar.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@199 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-26 01:54:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/97a79b5aebcb294f2753ced0b05b24cf4c3622ce');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004x01s2zku9v1xc', 1, e'Added more functions to qarray-test


git-svn-id: svn://svn.chromium.org/blink/trunk@198 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 00:03:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6271404a8968a0c79f332f83a8d981d19cc19f3d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004y01s24coxzkpp', 1, e'Now works with -disable-kwq-complete


git-svn-id: svn://svn.chromium.org/blink/trunk@197 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-25 23:46:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2f243c7b168f3d76aa7f95217ea2d79e258007f1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin004z01s2uona76lz', 1, e'Removed KWQFile.o from object list


git-svn-id: svn://svn.chromium.org/blink/trunk@196 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-25 23:34:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3967d14e5d3bd47a9e4b8a4a7043d20c3d16d9e2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005001s2bwg79nh4', 1, e'Added support for QFile.
This involved bringing over more files from Qt, and adding
some special voodoo to configure for sys/stat.h


git-svn-id: svn://svn.chromium.org/blink/trunk@195 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-25 23:17:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ed76cf5eacb0a6e8c6c0dfb9dbc5c07df275037b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005101s2yub7hf18', 1, e'Adding more functions to qstring-test


git-svn-id: svn://svn.chromium.org/blink/trunk@194 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-25 22:28:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3d989d1e4307e426a762b41a2c73f11fa6090aeb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005201s2a5155itn', 1, e'Fixed qstring-test.chk


git-svn-id: svn://svn.chromium.org/blink/trunk@193 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-25 17:30:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8aad9f00a935f93f5bcc4c3b0b2839856adc43ba');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005301s2f6e680dm', 1, e'Adding qstring-test to the list of tests


git-svn-id: svn://svn.chromium.org/blink/trunk@192 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-25 17:16:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/387b6de98c1426e74789d151e2c29b0a0416bf31');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005401s230ylzlij', 1, e'Added more tests


git-svn-id: svn://svn.chromium.org/blink/trunk@191 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 23:36:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/027127d25498937f5cb44924bc8ebff832cdcc39');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005501s2a1g4sfja', 1, e'Added more tests and modified existing ones


git-svn-id: svn://svn.chromium.org/blink/trunk@190 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 23:27:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/048a307d955ab40090bae4bdc8bc3944f54498cb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005601s2xjhg2n2x', 1, e'Added more functions to the qchar test


git-svn-id: svn://svn.chromium.org/blink/trunk@189 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 21:05:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0a64cc24db5c681f693d2a065680a47f8135f3a4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005701s2w8nbap1m', 1, e'Updated qchar-test.chk


git-svn-id: svn://svn.chromium.org/blink/trunk@188 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 20:19:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6b7e535639788a7496dac62f3fa866be1eb18aef');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005801s28rxb9zkn', 1, e'
Added more tests to qchar-test


git-svn-id: svn://svn.chromium.org/blink/trunk@187 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 19:45:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d681b57b26e2d5b617ded1ab1e62294af22cfd17');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005901s2ghy2yw3f', 1, e'Added iostream includes


git-svn-id: svn://svn.chromium.org/blink/trunk@186 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 19:05:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa7ebc3959c4916897c05204e51d35d984b136c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005a01s2p82jpgzn', 1, e'Added some more test programs


git-svn-id: svn://svn.chromium.org/blink/trunk@185 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 18:33:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/30a1c3724ef54c95872f84eb39f059d0baac6e9a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005b01s2ezzx13by', 1, e'
Added qchar-test to test.list


git-svn-id: svn://svn.chromium.org/blink/trunk@184 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 18:31:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cb2fceaf31521a0dff4dc7eccc4b4f6e0bac48ce');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005c01s2nxotpdxf', 1, e'
Added qchar-test to Makefile.in


git-svn-id: svn://svn.chromium.org/blink/trunk@183 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 18:31:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/997d7f78df8a5eae65bf313a136b8a984dade82e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005d01s2b9kd2jhv', 1, e'Fixed recursive call to make in test target


git-svn-id: svn://svn.chromium.org/blink/trunk@182 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 18:31:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/80cffed952efe9ac16b7b2e89b7fae64a7daa829');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005e01s2zrzisj22', 1, e'Various small tweaks and fixes made as a result of writing test programs


git-svn-id: svn://svn.chromium.org/blink/trunk@181 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 18:30:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b4be8ed8a0fff09eb2235d762154fce7277a4169');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005f01s2hjlrcbot', 1, e'
Added Files:
qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@180 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 18:24:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/498b73b43a3f524162e7f22dcf27d3b5a86ead65');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005g01s2mayympf5', 1, e'
Added Files:
qchar-test.chk


git-svn-id: svn://svn.chromium.org/blink/trunk@179 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-24 18:22:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d5b4bf9d4a74a4853fd0b1f53a5553b203a31dcc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005h01s2te1qcvag', 1, e'Added some more tests


git-svn-id: svn://svn.chromium.org/blink/trunk@178 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 18:05:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a74a424206739cabf7eba3ff40b91870d5448d59');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005i01s2tdvacopv', 1, e'Small tweaks and fixes as a result of writing unit tests


git-svn-id: svn://svn.chromium.org/blink/trunk@177 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 16:24:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/807ae692bedcd143d8a02b35f78e39390f217bbe');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005j01s20ghswidh', 1, e'Added some new tests


git-svn-id: svn://svn.chromium.org/blink/trunk@176 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 16:24:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eb09fe197e615b884b3b4580dd4e97f709019946');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsufin005k01s2evotnrck', 1, e'Removed this obsolete file


git-svn-id: svn://svn.chromium.org/blink/trunk@175 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-24 13:58:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5e1aaad86f3e33496c4f612d34383edad181c8c0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005l01s23b6v0gwr', 1, e'Updated Makefile to include /src/kwq/kde


git-svn-id: svn://svn.chromium.org/blink/trunk@234 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:07:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ccb2928f3aa1d6ac0016dd0711ba1bec78ebbd95');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005m01s2o9iyebb4', 1, e'Added and modified some classes in an effort to get the borrowed
KURL fully intergrated


git-svn-id: svn://svn.chromium.org/blink/trunk@233 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 14:30:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dcf106a50d4e9e63c0b09cf9d3cb97cd9a5b903b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005n01s2bbudoo7a', 1, e'Added hack from qstring.h to prevent Fixed, Rect, and Boolean problem


git-svn-id: svn://svn.chromium.org/blink/trunk@232 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-29 01:33:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/50cc8007280b22251f1e19a6c0e11189fa863653');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005o01s2pzt9uqqi', 1, e'Minor tweaks


git-svn-id: svn://svn.chromium.org/blink/trunk@231 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-29 01:31:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eec16394722dc2c821375cf1229adbaf9a031114');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005p01s2rc4b8a3m', 1, e'Temporarily ommented out some tests


git-svn-id: svn://svn.chromium.org/blink/trunk@230 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-29 01:28:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f0da5511fbf5e71f32c4f9c3f8c2cd9ad6cbc08f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005q01s2tgwo372e', 1, e'Adding qsortedlist to test harness


git-svn-id: svn://svn.chromium.org/blink/trunk@229 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-28 23:56:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/407ea834259e224aa379a1fdc01e16b50a2bfc0a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005r01s2beboj17v', 1, e'Added qvector-test to test.list


git-svn-id: svn://svn.chromium.org/blink/trunk@228 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-28 23:09:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8fdd86daa00966827d3e5fb609deaa304cd532aa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005s01s2y7ap25lv', 1, e'Extended qvector and qsize test


git-svn-id: svn://svn.chromium.org/blink/trunk@227 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-28 23:09:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/375f1b483d37c855fcbe361baa94d0864e0bbde1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005t01s2zvtbgkqv', 1, e'Fixed qarray-test. Extended qdate, qdatetime, qtime, qpoint and qrect tests


git-svn-id: svn://svn.chromium.org/blink/trunk@226 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-28 21:40:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d27c6c4180bc16d5a9459cf609e291125e7f4e06');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005u01s2djhexdrc', 1, e'Cleaned up comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@225 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 20:38:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e703919f1b317c54bfb11706d90857c95fb8bd85');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005v01s23oyqc0ed', 1, e'Fixed minor build problems.


git-svn-id: svn://svn.chromium.org/blink/trunk@224 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 20:35:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/48d1d07948d4526dc67b839198c1ce775c683a76');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005w01s26yi0woe4', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@223 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 20:00:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3bb18897380013bf14eabc87bea5d16b4ceaad9f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005x01s2yteeg4eq', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@222 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 19:45:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0e223ab08d20122eab8ee41d991512a83633acf7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005y01s23530et7v', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@221 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 19:02:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a861f1da85641dbff2608031a430fd290d94df4c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup005z01s26by6qkyp', 1, e'More QString implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@220 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-28 18:20:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9a90ae73501adda902f62273a0d2e7d62b9bde14');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006001s2ovuafr0m', 1, e'Added a little more error checking


git-svn-id: svn://svn.chromium.org/blink/trunk@219 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-09-28 18:18:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/64ec80bb257ab4e56e4196193e0a86e3390d397d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006101s257zf5lbd', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@218 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 02:36:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2cae740d9a65860995a302760be627d9517f7191');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006201s2easad533', 1, e'Files needed for rendering.


git-svn-id: svn://svn.chromium.org/blink/trunk@217 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 02:32:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b88fed545de1493ea08048327b23e1acd352f5de');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006301s2msnzevrg', 1, e'*** empty log message ***


git-svn-id: svn://svn.chromium.org/blink/trunk@216 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-09-28 02:25:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8209cda11aa421c8bb39a428f7da3dbcc2b9f689');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006401s2jzkq346r', 1, e'Added more functions to qmap-test


git-svn-id: svn://svn.chromium.org/blink/trunk@215 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-27 22:29:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3bde8df2d4f23c6dcd9115fb14cb5e3535b69fec');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006501s20g3v8v37', 1, e'Fixed the output for qstring-test.


git-svn-id: svn://svn.chromium.org/blink/trunk@214 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-27 22:05:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f8ecdcb0254dd632732e8080fa9d2065804b71ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006601s20fj8lgne', 1, e'Fixed qarray-test failure


git-svn-id: svn://svn.chromium.org/blink/trunk@213 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-27 21:02:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5b2a39de07dc1e806d16861424ea8276c6a6c62');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006701s2mek4vfml', 1, e'Adding remaining functions to qcstring-test. Cleaned up output.


git-svn-id: svn://svn.chromium.org/blink/trunk@212 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-27 20:57:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3f2b32b73f29f471ce26b6aa079f514589154931');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006801s278s0jwn2', 1, e'Fixes to process for switching use of borrowed strings and kwq strings


git-svn-id: svn://svn.chromium.org/blink/trunk@211 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-27 18:19:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/807c5d44bb8e5e59fab147e418ce551cf3a45b2f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006901s2n83oln7u', 1, e'Added class


git-svn-id: svn://svn.chromium.org/blink/trunk@210 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-27 17:36:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9f51c79dcc3d131a14afa4f099508e3ad2b0a05d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006a01s2gushiqhz', 1, e'This is the big mondo check-in that moves us away from the global
"KWQ complete" methodology of incorporating our own KWQ-implementations
of Qt/KDE classes, and moves us to a granular "using-borrowed" method.
This will give us much more control over switching to new KWQ classes
as they become available to replace those already provided by Qt/KDE.


git-svn-id: svn://svn.chromium.org/blink/trunk@209 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-09-27 17:35:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9a45dc3cfa1a2bd2cba466e573c985ef3d0a1965');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006b01s26d7hcsne', 1, e'Added more functions to qvaluelist-test. Fixed dict tests


git-svn-id: svn://svn.chromium.org/blink/trunk@208 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 23:15:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0585c84812db2442d90b33b9c34e4c83fbdb2951');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006c01s2847ge7jg', 1, e'Removed append from qptrdict.h


git-svn-id: svn://svn.chromium.org/blink/trunk@207 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 22:25:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d452d0b1323c75c3ac6cf2fedc570fecd9a321e0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006d01s2n6vvjb3i', 1, e'Removed append from qptrdict.h


git-svn-id: svn://svn.chromium.org/blink/trunk@206 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 22:24:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/95eb24aee200af92df7c46f7bd3a11143e280713');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsugup006e01s27ba85jmc', 1, e'Added take, clear, count and = methods to qptrdict-test


git-svn-id: svn://svn.chromium.org/blink/trunk@205 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-09-26 22:21:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/35f8a7f6ab718561c308a9a851196a5132e1b9c9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006f01s2qk1lukzw', 1, e'Making a small change to test jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@264 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-04 00:24:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4220ad4419b27993e7b1e9c88d09644dc1a599ee');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006g01s2mlkqes7d', 1, e'Making a small change to test jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@263 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-03 23:39:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e11eab0d3a1b2cf7c4d66184d9589327bc2bb218');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006h01s2lshca3f6', 1, e'Added -f-no-coalesce-static-vtables.


git-svn-id: svn://svn.chromium.org/blink/trunk@262 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-03 22:02:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4a6b8599aae7d0da63ff9d0e0fee5d6b87c4f6e9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006i01s29xzo3904', 1, e'Simple script to make libkde.a


git-svn-id: svn://svn.chromium.org/blink/trunk@261 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-03 21:31:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b564bd571324bab7fe5230c6399b2428b8beb48c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006j01s2zzc0pai5', 1, e'Added some comments about \'struct KWQFontData\'.  We may remove this data
struct in the future if not needed to save malloc/free.


git-svn-id: svn://svn.chromium.org/blink/trunk@260 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-03 20:29:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a1cfba5411868f63869f8895db5a869012a24898');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006k01s2p2vmusgr', 1, e'Added isNumber function for khtmlview.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@259 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-03 19:08:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/529e55db534abec463d9df88e05373d9d3dbeadd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006l01s2v0s2o4ne', 1, e'Fun, fun, fun with operator overloading


git-svn-id: svn://svn.chromium.org/blink/trunk@258 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-03 17:38:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/98e342763747241ff1e8682de536997ec26195dd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006m01s2egq7brn7', 1, e'More implementation, comments, and fixes for operators


git-svn-id: svn://svn.chromium.org/blink/trunk@257 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-03 17:38:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fcecf51033d7bfa12d3a96db088ed58a815aad43');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006n01s2amlo4xcw', 1, e'Commented out some more tests we don\'t implement


git-svn-id: svn://svn.chromium.org/blink/trunk@256 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-03 17:35:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/90063e95c0b5a666f4316e61248b7dce6fdb6afe');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006o01s24uo6mfg1', 1, e'Header for our version of KHTMLPart.


git-svn-id: svn://svn.chromium.org/blink/trunk@255 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-03 01:38:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b101ed0b3cfead942e61c43617f18161f3a81471');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006p01s20ze4c9tq', 1, e'This file now references out KWQKHTMLPart header.


git-svn-id: svn://svn.chromium.org/blink/trunk@254 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-03 01:37:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bd1d95289c63cfd90f19ec2d419bce98309654dd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006q01s227e5f968', 1, e'More implementations


git-svn-id: svn://svn.chromium.org/blink/trunk@253 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-03 01:27:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0fa849d20537a738672acafab55315322d63873f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006r01s26ipm5y99', 1, e'Changes and additions to support compiling src/kdelibs/khtml/khtmlview.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@252 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-02 23:27:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/85ca512dfc598556b63c2101ff2ba48224763c77');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006s01s23rx4xr03', 1, e'Changed fromLatin1 prototype


git-svn-id: svn://svn.chromium.org/blink/trunk@251 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-02 23:13:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff41a92e2518eef7a41cc5f5811b7268bcb0e1fb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006t01s23778xji5', 1, e'Implemented fromLatin1, utf8, and local8Bit functions


git-svn-id: svn://svn.chromium.org/blink/trunk@250 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-02 23:13:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73e08d7825d0c93ff9c6a988bba76aba9df71e66');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006u01s29d4wb3bj', 1, e'Files to emulate portions of KHTMLPart.


git-svn-id: svn://svn.chromium.org/blink/trunk@249 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-02 22:27:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/244415a1998cdeceda03ea6095b29e3b06fb3e4b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006v01s2askctwb6', 1, e'Added KWQKHTMLPart.[h|mm]


git-svn-id: svn://svn.chromium.org/blink/trunk@248 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-02 22:26:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/be7dff15774085c0227315f5edea2545ead53a29');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006w01s2c661l8e3', 1, e'Massive implementation and reorganization


git-svn-id: svn://svn.chromium.org/blink/trunk@247 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-02 21:50:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/060b85421a9b2ce3476c50cfb7cb23bab14fbd1e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006x01s2xtgpsihv', 1, e'Use kCFAllocatorDefault instead of NULL and added QChar::null


git-svn-id: svn://svn.chromium.org/blink/trunk@246 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-02 21:49:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3e13f1ad571301edb9070f5f781a82cc147e1757');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006y01s2u46599yp', 1, e'Added *.moc


git-svn-id: svn://svn.chromium.org/blink/trunk@245 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-02 21:21:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/caff673d906560d31cf5902dc671e836222f0c83');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4006z01s2425poxsv', 1, e'Added directory to the build


git-svn-id: svn://svn.chromium.org/blink/trunk@244 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-02 21:21:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d119e678855218397a000d90447a2bced235258');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007001s2jwi6j4v5', 1, e'Remove stupid foo in resource.


git-svn-id: svn://svn.chromium.org/blink/trunk@243 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-01 20:37:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0501752163042d607f6f9e25f4bc491c777558e3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007101s2wdy20x4c', 1, e'Moved some functions and their definitions, and marked them as only
needed when compiling with USING_BORROWED_KURL


git-svn-id: svn://svn.chromium.org/blink/trunk@242 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 18:02:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d1da0a398782bdd01d99aff01ef030e7fbbb2b1e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007201s23fflmoyi', 1, e'Added additional methods for text drawing.
Fixed problems with qnamespace.h enumurations.
Added more text tests to draw.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@241 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-01 17:55:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3d9a743c3155904e740e2ebe808816d3d381fd7f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007301s2t1t5natc', 1, e'Additions to this interface to support using borrowed KURL.
Also modified several interfaces to bring into line with with the "real"
QString has, due to the fact that the similar, but slightly different
interfaces caused some problems when the compiler tries to choose an
overloaded function.


git-svn-id: svn://svn.chromium.org/blink/trunk@240 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 16:46:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/36b0caeeb0791c2c0089964b54df99db3e916e24');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007401s2gis3j72h', 1, e'Build fixes, primarilt focused on getting KURL and QStrList to work.


git-svn-id: svn://svn.chromium.org/blink/trunk@239 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:40:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d8c51868988109f076b223b2b730c961133124c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007501s2apxwn7vm', 1, e'Updated to add /src/kwq/kde directory


git-svn-id: svn://svn.chromium.org/blink/trunk@238 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:30:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3f2469597f836211f24a88bac5bb51a5f8c9ce4d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007601s2ulwn0n5v', 1, e'Yes I\'m a dummy ... #ifdef USING_BORROWED_QSTRINGLIST must be
#ifndef USING_BORROWED_QSTRINGLIST


git-svn-id: svn://svn.chromium.org/blink/trunk@237 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:13:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/50471d5608a16632aa66c185054607378b598096');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007701s2dw9a44xf', 1, e'Oops! unterminated `#if\' conditional in last checkin


git-svn-id: svn://svn.chromium.org/blink/trunk@236 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:12:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/87a810abd97d34605a61cabc85adb3b111a51302');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuke4007801s2ejrswadu', 1, e'Modified to support switchable borrowing of implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@235 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-01 15:11:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa9e12e9841d9d1e47bb8d9f92ef66cab6b1b840');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007901s2975lmlem', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@294 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 23:12:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/05f58fb369aeff92df836bdd3969d63338c817c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007a01s2aojnciz7', 1, e'Fixed padding bug in arg


git-svn-id: svn://svn.chromium.org/blink/trunk@293 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 21:16:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/74c78e55bf526fff521790e311c1b484265b3129');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007b01s2hpldmoju', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@292 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 20:55:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0fb9be76405257bbc30b3251f779b446982b10b9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007c01s2ieivke23', 1, e'Fixed stupid off-by-one bug in findRev


git-svn-id: svn://svn.chromium.org/blink/trunk@291 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 20:43:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff169962ea133939f32581aea1a79561d765ccc4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007d01s219lhh2qi', 1, e'Use kCFAllocatorNull for contents deallocator


git-svn-id: svn://svn.chromium.org/blink/trunk@290 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 20:10:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ed43d14c0360f002e13f7af5b2cf32dde391277a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007e01s2k2tbpfqs', 1, e'Completed implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@289 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 18:58:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5f3bbd7f381018020c2b140a29325d416e8de4ba');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007f01s2383b3j1i', 1, e'Implemented fill


git-svn-id: svn://svn.chromium.org/blink/trunk@288 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 18:07:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bec3b15e1fd0248968678b5c43ef114985f8436d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007g01s29xgragd0', 1, e'Fixed possible bug in replace


git-svn-id: svn://svn.chromium.org/blink/trunk@287 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 17:21:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/25c96ce6f8031b157cb0190ea90f1e04ec7ed834');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007h01s2qizclcqr', 1, e'Implemented replace


git-svn-id: svn://svn.chromium.org/blink/trunk@286 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 17:17:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/59d9a82380b14f2d913422b6a5a3b4a6fa5007d7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007i01s230brr9z2', 1, e'Implemented truncate


git-svn-id: svn://svn.chromium.org/blink/trunk@285 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 16:36:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3ff076246b05fb60e0d6526428125e00d3558e3c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007j01s28wunvy98', 1, e'Implemented remove


git-svn-id: svn://svn.chromium.org/blink/trunk@284 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 16:28:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/67d9ea5b095bb41304c66b4ba9329d7a99b3e347');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007k01s2d7gftjn6', 1, e'Implemented sprintf


git-svn-id: svn://svn.chromium.org/blink/trunk@283 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 16:14:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/15d6d43decc73518fc358f09db48e76af306aa79');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007l01s2eyn0td65', 1, e'Added leftRight and re-wrote stripWhiteSpace and simplifyWhiteSpace


git-svn-id: svn://svn.chromium.org/blink/trunk@282 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 15:38:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/15db2323416eee2f571c0022263dff8ec336d568');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007m01s2e1kfjzo7', 1, e'Added private leftRight function


git-svn-id: svn://svn.chromium.org/blink/trunk@281 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 15:37:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6601367f50a8f6d1a69d1ecb3675741d25cc2440');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007n01s2xn65n5wd', 1, e'More stubs.  Created a khtml_settings in kwq.


git-svn-id: svn://svn.chromium.org/blink/trunk@280 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 03:01:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e2f3210bb3b0720ce1c30627110ade8daf86de41');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007o01s2h8efn4ug', 1, e'Still more implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@279 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-05 02:12:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7884be2be1c6cfde0f20feed190dbf5329e3ab21');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007p01s202o3x5cc', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@278 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 01:18:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d24f58099cb6e2b43e8ec74c7b4e1cdd2e3ac2b0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007q01s2o0tto6bi', 1, e'Added khtml_events.cpp.


git-svn-id: svn://svn.chromium.org/blink/trunk@277 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 01:17:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/41361b56e776e7932fbae8c70e1546722aa5e5f8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007r01s2yjpfadk2', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@276 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-05 00:28:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5b0c4731f42db8de9d50ccd20893d976b9fa9e05');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007s01s261zj5ykx', 1, e'Added some warnings for unimplemented functions via NSLog


git-svn-id: svn://svn.chromium.org/blink/trunk@275 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-04 17:45:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73e9313182126d36c70b5a717f49424bc7b9e005');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007t01s25idumlm2', 1, e'A few tweaks to compose and visual functions


git-svn-id: svn://svn.chromium.org/blink/trunk@274 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-04 17:27:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0987c6af9179f03bb0442fa62b18f823876738fd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007u01s2f71zoro3', 1, e'Replaced stupid usage of __CFStringMakeConstantString


git-svn-id: svn://svn.chromium.org/blink/trunk@273 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-04 15:59:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4a3c7414f66fbc9ad19a82f2871971e382f33dd4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007v01s2dbqi2cqf', 1, e'Fixed a few bugs from previous checkin


git-svn-id: svn://svn.chromium.org/blink/trunk@272 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-04 15:11:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/408a1c8f3ff1085c2252df846639df129445cc08');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007w01s2eaqzi4pt', 1, e'More stubs...
?\\004


git-svn-id: svn://svn.chromium.org/blink/trunk@271 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 03:10:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/63e7f8d00afe582ecc186cb23530ae574a91f3f2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle007z01s2p9jxzxzs', 1, e'Changes to make libkde.a
.


git-svn-id: svn://svn.chromium.org/blink/trunk@268 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 01:37:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0dd5501660717377360e883e13b9a6d2ec870f94');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle008001s2iwhixyjz', 1, e'Changes to make libkde.a


git-svn-id: svn://svn.chromium.org/blink/trunk@267 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 01:36:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/09a3ce2e27313f7250bad9f595624ed536bf52ec');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle008101s23990rmok', 1, e'Simple linkage test app.


git-svn-id: svn://svn.chromium.org/blink/trunk@266 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 01:23:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6b55938f9a4a551a17714fc6e32ecf9f67ca5e54');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsulle008201s250l2j3u5', 1, e'New stubs for widgets.


git-svn-id: svn://svn.chromium.org/blink/trunk@265 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-04 01:21:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/efee702097af7b9f1a37f1e958ea4c2fdcdee1bc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008301s24txttrub', 1, e'Changes that help to make the WebViewTest work


git-svn-id: svn://svn.chromium.org/blink/trunk@324 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 18:04:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fc549aa32db70dcdb89576bce821d563df117663');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008401s2rnd8ko3x', 1, e'WCURICacheClient.h is obsolete, removed include


git-svn-id: svn://svn.chromium.org/blink/trunk@323 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 16:37:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/11b27a63010b1ce2f70ee55928f9b0d922a7735d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008501s2vfsfzsjj', 1, e'Changes and additions to make the WebViewTest work, and to begin
the process of bringing WebCore and WebKit together


git-svn-id: svn://svn.chromium.org/blink/trunk@322 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 14:23:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2c5ca0938fe7fb179a943b28c61fe7a299be27a4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008601s27bunlx1c', 1, e'Added .cvsignore file


git-svn-id: svn://svn.chromium.org/blink/trunk@321 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 14:19:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c09585251a471f07399d4e8a323bc60e5742e00e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008701s2bv4qb8tw', 1, e'Implemented NSString conversion macros


git-svn-id: svn://svn.chromium.org/blink/trunk@320 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-13 01:07:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7afc7b2f23d989b4535b6d4a9d92b76a45264629');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008801s23c33b3vs', 1, e'Fixed compile brain damage.


git-svn-id: svn://svn.chromium.org/blink/trunk@319 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-13 00:18:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/154d9ca964adab5ee86916df4f2d333dec19a831');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008901s2yncu0ajn', 1, e'More operator overloading and numerics hell (so just shoot me)


git-svn-id: svn://svn.chromium.org/blink/trunk@318 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 23:36:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/367e1aae610353a75437f30bd88115c28cc7d716');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008a01s2qtegzl1d', 1, e'Added textfield to support input type password and maxlength attribute.
Implemented the button types and combobox
.


git-svn-id: svn://svn.chromium.org/blink/trunk@317 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-12 20:02:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cbe22d5e079e3a9d7a4ae1ef2bf01f5bbd89b42b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008b01s2qpz5lkq7', 1, e'Re-enabled several tests


git-svn-id: svn://svn.chromium.org/blink/trunk@316 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 17:02:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b75affc170a7df9619ed3e2b9ef70581c8ba7b57');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008c01s267qn8hno', 1, e'Ignore the generated Makefile


git-svn-id: svn://svn.chromium.org/blink/trunk@315 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 15:37:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8664ec7d9c379e28eb1070f6cff84447ae1e00b8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008d01s2ifqvoifq', 1, e'Removed generated file


git-svn-id: svn://svn.chromium.org/blink/trunk@314 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 15:30:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6d524d6f9a2ba14d27de8f8b1c0197ee82992e18');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008e01s2ya5stqhe', 1, e'Disabled borrowed QString


git-svn-id: svn://svn.chromium.org/blink/trunk@313 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 01:55:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/be1334517aa2aeda8d5517b268078cf810554894');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008f01s2flstxz1a', 1, e'Re-factored integer conversion code and other changes


git-svn-id: svn://svn.chromium.org/blink/trunk@312 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-12 01:54:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4d37a0b9fff4c66fd7835a7dac437c1db62f7bc1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008g01s2m0vsqd1l', 1, e'Added support for QButton.


git-svn-id: svn://svn.chromium.org/blink/trunk@311 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-11 23:29:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6c95a7660fe9efb3ec4ecffa56a670fe6bdaebe1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008h01s2kkqjf52q', 1, e'Fixed brain damage due to my changes re: id -> _id.


git-svn-id: svn://svn.chromium.org/blink/trunk@310 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-11 21:30:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6ba7b099bd8b4a880cdddedd77b7e0f148796662');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008i01s2hgbewfh4', 1, e'Redefine Fixed around include of Cocoa.h for build voodoo


git-svn-id: svn://svn.chromium.org/blink/trunk@309 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-11 01:52:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d3b02f17ef4898fd513facabd682761c166d1a4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008j01s2njeuwilt', 1, e'Replaced incorrectly formatted license


git-svn-id: svn://svn.chromium.org/blink/trunk@308 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-11 01:17:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dfdab47a86a8219aba0354816c90bdf309a599ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008k01s27r035gl3', 1, e'Added some comments to openURL.


git-svn-id: svn://svn.chromium.org/blink/trunk@307 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-10 22:00:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/777bc20ae98bea9fdae74b3e3c50fa37ff57850c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008l01s24q740f9y', 1, e'First add of files for project


git-svn-id: svn://svn.chromium.org/blink/trunk@306 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-10 17:45:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f259430b45ef33ff3ffe87f08f5f6b9aae7a36ca');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008m01s21kt2agfe', 1, e'Needed to add -lkde to link line.


git-svn-id: svn://svn.chromium.org/blink/trunk@305 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-10 01:59:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d034a927a3dbad9e2f9c0c20f475877809331ac3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008n01s24mi8197u', 1, e'Added debugging to more stubs.  Added implementation of write() to KHTMLPart.


git-svn-id: svn://svn.chromium.org/blink/trunk@304 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-10 01:56:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eb8d6d10ecfe6af108f3a2a05a2884725ddc63c1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008o01s2h6alq7h6', 1, e'Added debugging to stubs.  Cleaned up test program.


git-svn-id: svn://svn.chromium.org/blink/trunk@303 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-08 22:56:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73130f786aba79f353e97d7c29fbc97e6b81a098');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008p01s2i93lr7b2', 1, e'Changed owner of htmlview test app nib.


git-svn-id: svn://svn.chromium.org/blink/trunk@302 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-08 21:09:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2c8ea7cdfb8db173ae637096f4c21f8b10dff453');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008q01s2dnat8p5z', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@301 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-08 20:25:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7958fc4787f7ffde1975504e75f5b726e3acda89');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008r01s2lkolc9hf', 1, e'Remove older file


git-svn-id: svn://svn.chromium.org/blink/trunk@300 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-08 18:45:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f690d2b2a1ff9487b3b10207077e04113ad28b7f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008s01s2e920jszy', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@299 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-06 02:04:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/de03ddae879a6a987bc414ae4ccc3b8fefd2209b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008t01s2sf2j94ko', 1, e'Fun with operator+


git-svn-id: svn://svn.chromium.org/blink/trunk@298 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-06 01:51:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/79ddb1dc066b3012354a0b57b59e1cbafa5ff093');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008u01s2hqqkrel9', 1, e'Fun with numerics


git-svn-id: svn://svn.chromium.org/blink/trunk@297 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-06 01:11:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df767d273acafb434861783d63630bdcfbf8e38f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008v01s29a2kwax5', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@296 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-06 01:03:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/55dfa4b401015bf79a102d9b7dda361cdb17a3b6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuryg008w01s2uho6zqx5', 1, e'More stubs.


git-svn-id: svn://svn.chromium.org/blink/trunk@295 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-06 00:12:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/869b2ac5110a0c26c198f5e558881aa025481c91');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcv008x01s2denddh5s', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@354 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 17:47:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/774a6a9885a84318a6d1365899739495ea7a7e34');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcx008y01s2q3ekjdyl', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@353 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 17:44:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/060300bc3f265a8899740278d09480d5e2d28a95');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy008z01s2xz53ezja', 1, e'File should not have been checked in


git-svn-id: svn://svn.chromium.org/blink/trunk@352 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-18 17:30:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/462be0f8e9253f50a1c46a4cc0f17613f89caf22');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009001s2b87phdu9', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@351 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 17:20:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2f41edbbf87dcf8e49b784a6eb8593940c436ece');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009101s2dgw0dboh', 1, e'Stubbed in a few functions


git-svn-id: svn://svn.chromium.org/blink/trunk@350 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-18 00:43:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a82437b9c1ae16da25a66552994565fcf3b44232');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009201s2m2kujwif', 1, e'First attempt at a real implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@349 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 23:21:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/57a6f24ecfd190424177546850636710d3cb8fcf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009301s29tfjblja', 1, e'Fixed the codecForName breakage


git-svn-id: svn://svn.chromium.org/blink/trunk@348 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 23:20:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/829e72dc54d7aa1ea66a925830f19f86aa7658a5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009401s2xw626vfb', 1, e'Whacky hacking to try to get the system to start chomping on data loaded
from the network


git-svn-id: svn://svn.chromium.org/blink/trunk@347 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-17 21:51:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/320b7b22aaab43d4f9867c6d6c3fe2d6c4db07b8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009501s28q4ppan7', 1, e'Make the constructor use a CFStringEncoding type


git-svn-id: svn://svn.chromium.org/blink/trunk@346 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 20:16:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/11d0ff6600b5d26554f6380587c152235b7eeabb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009601s2i0qbyp09', 1, e'Anal-retentive tweaking


git-svn-id: svn://svn.chromium.org/blink/trunk@345 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 20:14:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cb55cf5eef2e7626122886638afd26a9caa8fe73');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009701s2ltdc4vtq', 1, e'First attempt at a real implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@344 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 20:02:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/61957a20d8d7b460d84cdf07acb3d2f4e511ddee');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009801s2tkwxplxk', 1, e'Added fromStringWithEncoding for QTextCodec implementation


git-svn-id: svn://svn.chromium.org/blink/trunk@343 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-17 20:01:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/87b67e57dccd3ef58aafea112d14c2ee63731ddf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009901s20yr2z225', 1, e'Updated project so that its include paths are less screwed up than before


git-svn-id: svn://svn.chromium.org/blink/trunk@342 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-17 18:55:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0200ad2adb97bbbc589a930305fad0e0d05c0aaa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009a01s23hpvcvsv', 1, e'Unscrewed up the project by re-adding files that mysteriously disappeared


git-svn-id: svn://svn.chromium.org/blink/trunk@341 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-17 18:49:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6ae24739a1b146d3136cdfa8a23451b90d43e931');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009b01s2ibyns3hy', 1, e'Added WebCore include directory to header search path


git-svn-id: svn://svn.chromium.org/blink/trunk@340 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-17 18:43:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8bf834db9a369651f35e719ef1f1c12bf774d9a1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009c01s2xzhe1byl', 1, e'I\'m a dope, and had been checking in all these changes to the repository on my local disk. Here is an update for the "real" repository.


git-svn-id: svn://svn.chromium.org/blink/trunk@339 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-17 13:56:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/973d9fd89c3b41b222e47ed9eead0b1c0a9a2e32');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009d01s2gc935wp7', 1, e'More comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@338 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-16 23:29:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8889b7414812ecde824aa6c757d72f6fd25645cc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009e01s2f1yyhsl9', 1, e'Now executes perl scripts with an explicit perl invocation rather than
relying on them to be executable


git-svn-id: svn://svn.chromium.org/blink/trunk@337 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-16 22:26:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3a4173a29b92bb6b38e375f35ebc8d6feed7c651');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009f01s2bc9cjmdv', 1, e'Removed dependency on whacky objective-C internals


git-svn-id: svn://svn.chromium.org/blink/trunk@336 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-16 22:22:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d0c2089241962fb320997d031d8f22056bf4b880');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009g01s2q1z1o9g8', 1, e'More changes for the new build system


git-svn-id: svn://svn.chromium.org/blink/trunk@335 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-16 22:14:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3e0bef56ff009724625545eb778a5abc67ef3f95');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009h01s2s7fxr064', 1, e'I have made substantial changes to the build environment in WebCore, specifically to the way we link our code. The main improvement is that we now build a single library, called libwebcore.dylib, for the whole source tree.


git-svn-id: svn://svn.chromium.org/blink/trunk@334 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-16 22:10:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/edd7669cc8bb75218b594f66e6e25f14ed9c738f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009i01s2yhnnd2rh', 1, e'Fixed comments, again.


git-svn-id: svn://svn.chromium.org/blink/trunk@333 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-16 22:04:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/69db6d324391fcfd065157e6c9f4b306e89e3bdd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009j01s2vpwzqxy3', 1, e'Fixed comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@332 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-16 22:00:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e51dd5e52cbb8a01d27810325ac058ae531557de');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009k01s2qfvcsl9k', 1, e'Implemented KWQTextArea that has all the functionality we need for the <TEXTAREA> widget.  KWQTextEdit.mm emulates the kde/Qt APIs and passes call through to KWQTextArea.


git-svn-id: svn://svn.chromium.org/blink/trunk@331 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-16 21:58:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/731089d8ac975fb79fcd571b5c0be920afd94483');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009l01s2h6lck3wg', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@330 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-15 23:37:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aabe94fa0681a750e9203f84b1dab97c7d998d9f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009m01s2obcknwa6', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@329 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-15 22:31:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5301cb5c234d002d104629b32c09ba010d2e8a21');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009n01s2gf6npvy0', 1, e'Modified the stubs so they won\'t actually explode for now


git-svn-id: svn://svn.chromium.org/blink/trunk@328 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-15 19:27:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e397f5def292d466d4183687fdfc5e3abd9f861d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009o01s2tbnloe1m', 1, e'Added partially implemented log and did some tweaking


git-svn-id: svn://svn.chromium.org/blink/trunk@327 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-15 19:26:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2c10e4b8ca9c6068dfc162ff37e113ac5567289c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009p01s2f75m5f9y', 1, e'Changed ref to draw.mm to Project Relative


git-svn-id: svn://svn.chromium.org/blink/trunk@326 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 19:26:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b3ff4e5e668e20bfdeedccf464b920493a2dd8ac');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsutcy009q01s2e5f37vfr', 1, e'More work on KWQKHTMLPart <--> WebViewTest integration


git-svn-id: svn://svn.chromium.org/blink/trunk@325 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-15 18:31:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/166f59070d37b42d200234fb919e7146c49000cf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009r01s2x0l2giek', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@384 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 05:28:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d25df366387c46b617e23845d8d8c52eab5a8aa1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009s01s2a6qol1ve', 1, e'Forgot to submit qdatetime.h for first KWQDateTime submission


git-svn-id: svn://svn.chromium.org/blink/trunk@383 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 03:56:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d3e444c1a05e46165115a185a0cde39dae0c559a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009t01s27fv8vyh8', 1, e'First submission of our implementation of KWQDateTime


git-svn-id: svn://svn.chromium.org/blink/trunk@382 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 03:01:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e75ac7dbb9ca0462186e7eb93562cb2cccdb1c34');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009u01s2g41rsod4', 1, e'Commented out QDateTime from the borrowed classes


git-svn-id: svn://svn.chromium.org/blink/trunk@381 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 03:00:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b02f8c0e631326f6e564c94c7c9c1e54bdbf741c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009v01s2elaq7qk8', 1, e'Fixed qdatetime tests


git-svn-id: svn://svn.chromium.org/blink/trunk@380 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 02:18:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/98356ac3f084107daaf8f13a374c4dc9d752cca0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009w01s20kjavf73', 1, e'Added


git-svn-id: svn://svn.chromium.org/blink/trunk@379 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-23 15:44:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/02f4db850daa772ff596655d510b5b1704099cba');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009x01s2gg7xadjd', 1, e'A numer of changes that (hopefully) move ahead our efforts with
rendering. This set of changes includes:
	- More fully implemented colors, color groups, and palettes
	- Re-worked constructors that create fewer temporaries and
	  eliminate problems with some attempts at assignment
	- An implementation of QRegion
	- Tweaks to the html view and the html part


git-svn-id: svn://svn.chromium.org/blink/trunk@378 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-23 15:24:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5e78d2e06d8c06aa332b70e3aa09973bc396e588');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009y01s2s34n88dh', 1, e'Lots of stuff to get WebViewTest to run.


git-svn-id: svn://svn.chromium.org/blink/trunk@377 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-20 03:19:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/22d01327f0cad617ac0a05a45c827d2fa01f4fae');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui5009z01s2f13moalf', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@376 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-19 21:33:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4798b91af2b49f1e853986acdc70a712b2ec721a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a001s2cjombpgx', 1, e'Fixes for getting WebViewTest running.


git-svn-id: svn://svn.chromium.org/blink/trunk@375 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-19 18:22:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1df5eaac7576f9480486f249320ec4f2d8976464');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a101s2mmy3b2eb', 1, e'Removed a release temporarily.


git-svn-id: svn://svn.chromium.org/blink/trunk@374 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-19 16:54:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ec36a1b0067af083ba4248eb7f21bfe4eefca413');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a201s2jvedhpb4', 1, e'More hacks to get the borrowed qstring to work


git-svn-id: svn://svn.chromium.org/blink/trunk@373 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-19 14:45:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/53d0524772d7912f4d02fe1c8c3ac2636a6bada4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a301s2wueajoni', 1, e'Fixed inadvertent horkage by rjw


git-svn-id: svn://svn.chromium.org/blink/trunk@372 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-19 14:23:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dc3333825da6f91b9ff9cc695e6f0779a9ca9722');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a401s2g4lm5vwu', 1, e'Hacks to get khtmlview test to run.


git-svn-id: svn://svn.chromium.org/blink/trunk@371 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-19 05:28:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b9609b31132a2846cd7f390cea3fa09e686ff390');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a501s25umeo6de', 1, e'Chnages (hacks) to get khtmlview test to run.


git-svn-id: svn://svn.chromium.org/blink/trunk@370 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-19 03:50:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cfceea53a55ecfc69194d14ded2a35f1bc003a19');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a601s2bccyx3nd', 1, e'Disable when using borrowed qstring


git-svn-id: svn://svn.chromium.org/blink/trunk@369 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-19 01:40:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff449dc1da06cfcd434e29e413b796ce29c66369');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a701s2crnfxyxo', 1, e'Fixed stupid signed arithmetic bug in mid


git-svn-id: svn://svn.chromium.org/blink/trunk@368 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-10-19 01:38:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/704c29abf1896bfd934f95c475fa098c18774f8a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a801s235fnft9n', 1, e'Added support for efficiently handling requests for the same uri
by more than one client


git-svn-id: svn://svn.chromium.org/blink/trunk@367 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-18 22:19:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/787bbd02beba7582bee3d5e8861f8004f8a41602');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500a901s24ajzjxls', 1, e'nother checkit


git-svn-id: svn://svn.chromium.org/blink/trunk@366 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-18 21:28:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/28e5793ba647be4b4c446471ddae3b066fcea9ca');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500aa01s29p7m3isa', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@365 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 21:25:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a606612005bc7e62568bf80bdd36011576cefd39');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ab01s27k5whwgy', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@364 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 21:11:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6d34876df4d3028c278274ca578c4e95daa6bcf6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ac01s2ei21j28v', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@363 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 21:08:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4bb80802cff02e329dd911d080e21df9b4e5c75a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ad01s2ewmp3i1m', 1, e'Added classes to get past drawing problems.


git-svn-id: svn://svn.chromium.org/blink/trunk@362 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-18 21:08:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f23caceeb590513e23a34bfaef18b6c5a7130d21');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ae01s2e5gmb8ah', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@361 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 21:07:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ce258ed1c642adaa8300dd2b6198fee07b0231c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500af01s2yofnt8ra', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@360 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 21:02:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/45fdcf96b10a07f638fb027d655a03cda592aaf3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ag01s2pldfg17e', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@359 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 18:13:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8069dfacf31ccfaac04d9c95e9faa338ed605ecc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ah01s2z6bcvbm0', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@358 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 18:07:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3aaba45a1a59e1d0ba671ce98d3e0831080aa2cf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ai01s2q1o9wbvo', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@357 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 18:02:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8705123dc4a3fea7a962738a9e97463b3f84b246');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500aj01s2xbco0cta', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@356 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 17:57:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7c83af2d90e4ebd7f3b403b95a61baf989027796');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuui500ak01s2t5etolaa', 1, e'qchar-test.cpp


git-svn-id: svn://svn.chromium.org/blink/trunk@355 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-18 17:54:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f86f2ee727acd96f7df4d84f306cc53c175a58ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100al01s2ocwxncgi', 1, e'Fixed project reference to html4.css


git-svn-id: svn://svn.chromium.org/blink/trunk@415 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-06 19:04:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9eaa0165b6a2d7b7e5fe92a171f4f81d310936f8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100am01s2uran8rmo', 1, e'KWQKstddirs now accesses html4.css in WebKit\'s Resources directory


git-svn-id: svn://svn.chromium.org/blink/trunk@414 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-06 18:47:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/610bb6acb587ffcc9e5d91244ddc72c9abf28c80');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100an01s2ai3bic0f', 1, e'Added the com.apple.webkit identifier to the WebKit framework. Added html4.css to the frameworks Resources directory


git-svn-id: svn://svn.chromium.org/blink/trunk@413 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-06 18:14:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/99cb40ac3e545426e4823b11baf9c5e6f902a4c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ao01s28tjs9yzi', 1, e'Added KWQGuardedPtr to object list


git-svn-id: svn://svn.chromium.org/blink/trunk@412 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-06 17:14:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7474f3f34ddf73706630cc7a902e8ee7fdc19145');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jp01s2s67dpscg', 1, e'Fixed previous break


git-svn-id: svn://svn.chromium.org/blink/trunk@695 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-06 00:24:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/53f8fff7c81eb65efeed8406c9835d0cab84f036');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ap01s2ifr9rawg', 1, e'Tweaked again to add kdelibs directory to include paths


git-svn-id: svn://svn.chromium.org/blink/trunk@411 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-06 17:03:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b44c4f270d49a5dc884f27b002cfe433683466d2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100aq01s2we03dmkb', 1, e'Added kjs directory


git-svn-id: svn://svn.chromium.org/blink/trunk@410 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-06 17:02:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9545a488b93269558cd9c777d3d5bcee8c59cba3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ar01s2cnmi14tb', 1, e'A number of changes that help to get javascript up and running:

        - Modified a number of Makefiles to include ecma directory
        - Tweaked a bunch of kjs files that used \'id\' as a local variable
          name. Now that these files are included in .mm\'s there\'s a name
          conflict with the Objective-C type. In each case, the \'id\' local
          variable name was changed to \'_id\'.


git-svn-id: svn://svn.chromium.org/blink/trunk@409 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-06 16:41:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/491174c3c2f23b567377a7b348a4e244b3da849f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100as01s2j6j5bk0b', 1, e'A number of changes that help to get javascript up and running:

	- Modified a number of Makefiles to include ecma directory
	- Tweaked a bunch of kjs files that used \'id\' as a local variable
	  name. Now that these files are included in .mm\'s there\'s a name
	  conflict with the Objective-C type. In each case, the \'id\' local
	  variable name was changed to \'_id\'.


git-svn-id: svn://svn.chromium.org/blink/trunk@408 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-06 16:40:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bdd52b2837abefa4642851a0df57448e6eea15d0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100at01s24c69zznn', 1, e'Stupid implementation of i18n to return same string.


git-svn-id: svn://svn.chromium.org/blink/trunk@407 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-05 22:08:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/93ad15b9f0bd596a31aeb4417d376dfe325fddb1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100au01s2fgqmdk6g', 1, e'Added fonts sizes to defaults


git-svn-id: svn://svn.chromium.org/blink/trunk@406 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-05 18:33:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/44a5ae594a6d874c78cb9ae08059c60f86dd47ac');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100av01s2z0hkbmcx', 1, e'Committed evil hack to prevent double freeing of image bytes since
NSData doesn\'t give a sufficiently good *public* API.....ooof


git-svn-id: svn://svn.chromium.org/blink/trunk@405 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-03 00:50:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5c9d58b2c65b0c73d7750389a3f63f61b106781c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100aw01s2ulwc1xcl', 1, e'Fixed some geometry issues with drawing the web page view, and removed
some of the ugly, hard-coded hacks that helped us to get this far.
I also removed the unneeded double-buffering from the view drawing.


git-svn-id: svn://svn.chromium.org/blink/trunk@404 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-02 23:14:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7cbfc993493289d107c339f613e3fcac29424b4d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ax01s259kapcaf', 1, e'Enabled user defaults for KWQKHTMLSettings


git-svn-id: svn://svn.chromium.org/blink/trunk@403 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-02 21:37:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b581830e582d0c2daec0c33b41356cd061f479af');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ay01s2eqiota8k', 1, e'Update framework project to include public headers.


git-svn-id: svn://svn.chromium.org/blink/trunk@402 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-02 21:23:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3d45ca0944fcd7ba58825edb2ba334d722778abd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100az01s23an9di1w', 1, e'Added and removed files to project.


git-svn-id: svn://svn.chromium.org/blink/trunk@401 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-02 20:47:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff7c58c1079546e983ce155d7a160aa530c293b3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b001s2p7ul65u7', 1, e'Some additional files that go along with the recent large change to the make
system


git-svn-id: svn://svn.chromium.org/blink/trunk@400 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-02 19:29:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cc9f8e7f713f628064cb451c9d3856bb9632936a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b101s2muzsjx2z', 1, e'It\'s that time again: I have made a number of changes to the make system.

The two major modification are:

1. The tests directory, which was formerly buried in WebCore, has been moved to the top-level in Labyrinth, and is now a peer of WebCore and WebKit.

2. I have moved the the configure and Makefiles from WebCore one directory up so that they may serve for all of Labyrinth. In other words, running `configure` and `make` in Labyrinth now builds "everything," including WebCore, WebKit, and the test programs.


git-svn-id: svn://svn.chromium.org/blink/trunk@399 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-02 19:22:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4e05a5b0824333c50f2a00392794137967dc5b89');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b201s2ifys99sf', 1, e'Added template +initialize for Chris.


git-svn-id: svn://svn.chromium.org/blink/trunk@398 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-01 23:45:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6ef5b5470f4bfc285b77a1c8ba71d630754b5559');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b301s2k41cgwbk', 1, e'Rearranged layout of class templates.  Clear seperation of WebCore and C++
infected code in NSWeb*Private.h declarations.  Our implementations must also
be objective-c++.


git-svn-id: svn://svn.chromium.org/blink/trunk@397 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-01 23:18:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/164f2d682bd3ce16df65834959bec0de6599bb1d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b401s2y4eeafji', 1, e'Removed files from this part of the tree; moved to a top-level
Labyrinth directory called Tests


git-svn-id: svn://svn.chromium.org/blink/trunk@395 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-01 22:18:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1c62a9685433f2e7e64013de47225fae35433f46');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b501s22fx4fsmh', 1, e'Some small code cleanups, and removal of some unneeded debugging messages


git-svn-id: svn://svn.chromium.org/blink/trunk@394 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-01 00:43:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/79241fcddda2a50d47b71ac87533e5a27d217683');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b601s2ewsqnvw7', 1, e'First check in of stubs for NSWebPageView classes.


git-svn-id: svn://svn.chromium.org/blink/trunk@393 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-31 21:48:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/93f4c3c84c08afe627362835b2b9062c32833ff7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b701s2ot05emkm', 1, e'Changes to add address bar to test app.


git-svn-id: svn://svn.chromium.org/blink/trunk@392 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-10-31 21:46:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/adb79c7b2b35dc31591d4700da7b4a194e0e9c2f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jq01s2uczimnl3', 1, e'Intentional break to test jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@694 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-06 00:19:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/483b01ae7af3651090bd58348cee5c3d9f651764');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b801s2cdnszml1', 1, e'A collection of changes focusing on rendering and loading:
	- Images now load
	- Removed loader.cpp; added KWQKloader.cpp
	- Reworked some of the API in WCURI land
	- Assorted other small changes anf fixes


git-svn-id: svn://svn.chromium.org/blink/trunk@391 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-31 21:29:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/01a23ffbaa156c11c4eca70a4dabb3d64c8238ab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100b901s291aaj6hi', 1, e'Fixed copy() method: it needs to be s deep copy


git-svn-id: svn://svn.chromium.org/blink/trunk@390 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-31 21:15:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9461098f162f3f6a62e07cf10d4e35b1f3d4dce6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100ba01s2i288zas7', 1, e'More improvements to rendering. The major addition is that links draw
correctly now.


git-svn-id: svn://svn.chromium.org/blink/trunk@389 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-26 21:23:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/72f8b0cbefd0d216c125e28689c85904e88246bd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100bb01s227n4vypz', 1, e'locate and locateLocal now return /symroots + filename


git-svn-id: svn://svn.chromium.org/blink/trunk@388 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-26 19:02:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/927b996b8408aa23c136a378aaa7fc6247f3f27f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100bc01s2a4e8n3el', 1, e'This is a fairly bit set of changes that improves rendering.


git-svn-id: svn://svn.chromium.org/blink/trunk@387 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-10-25 23:01:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c06acc45113362cc8cb67efc2242961156cacf1e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100bd01s2basvw9gr', 1, e'Fixed qdict-test.chk


git-svn-id: svn://svn.chromium.org/blink/trunk@386 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 18:31:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/54e06a27ebbac25722460ce7d5ac18a9bff4ec4f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuwq100be01s28wwk7mlw', 1, e'Fixed bug in setCurrentDate


git-svn-id: svn://svn.chromium.org/blink/trunk@385 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-10-24 17:57:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1eaa0c812565d560e15d035736550ccb8b84c0d4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bf01s2frzewfvi', 1, e'Lots of changes to improve text rendering and some early attempts to optimize font
metrics.

Fixed drawing of lines.


git-svn-id: svn://svn.chromium.org/blink/trunk@445 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-13 04:33:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/96663d1022602fd697c472cb93ee09fd2ac923b7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bg01s2jedymfx5', 1, e'NSURICacheJobID is defunct


git-svn-id: svn://svn.chromium.org/blink/trunk@444 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-12 22:40:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4bcea574075b87f0a6272f4a5585b319df6c31e2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bh01s24f40ch6e', 1, e'Some more small cleanups that should improve stability.


git-svn-id: svn://svn.chromium.org/blink/trunk@443 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-12 22:05:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a4ad18b1f032da74ee4939f3a0ceb43013898afa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bi01s248udqh2d', 1, e'- Eliminated WCURICacheJobID class. It was on its way to being obsolete, and
I finally did it in.


git-svn-id: svn://svn.chromium.org/blink/trunk@442 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-12 21:39:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a01aa0c0d35036ef5b1cd9a0de7534828c646508');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bj01s2q1ar7b0k', 1, e'jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@441 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-11 10:05:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/03918e7610e090becb7b04823e45644f05c2faeb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bk01s2hrbd5qrc', 1, e'testing jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@440 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-11 00:53:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/748ae7f136feed044a58d7278c35580af82d6373');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bl01s2nnxjst5j', 1, e'testing jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@439 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-11 00:51:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/05388b67c7f0e33c4ef3c0361096d476f9e8f72e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bm01s2fe6wialc', 1, e'jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@438 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-10 23:37:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/18ee0824c303fa3f9177541cf920ecb3c0361912');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bn01s2qm9rr975', 1, e'jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@437 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-10 23:30:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b0a30f5ab3247966ebe56949f4c366adedb74bd8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bo01s248ooiewd', 1, e'jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@436 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-10 23:21:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4da9b109ba79fc6acf294fe53f0dc62c3801943a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bp01s2t85qql1e', 1, e'jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@435 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-10 22:59:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5eeaf6fc3cea6b5dd897fe07e64189ff635d6d07');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bq01s225y8wo3q', 1, e'More fixes for window resizing, etc.


git-svn-id: svn://svn.chromium.org/blink/trunk@434 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-10 02:13:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a2df427e350d3747abbd1a9e9566d526248468e4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00br01s2b8edw005', 1, e'More fixes.  Added support for incremental layout.


git-svn-id: svn://svn.chromium.org/blink/trunk@433 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-10 01:33:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/08b1b844804a347f85fd53f00fd5e41d9d2ac2d1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bs01s21obcuchu', 1, e'Fixed duplication of addSubview calls.


git-svn-id: svn://svn.chromium.org/blink/trunk@432 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-09 23:29:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/de74faf8466c124d19ddab626c84ae717fcf8ed9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bt01s24a115sai', 1, e'More rendering/forms fixes.


git-svn-id: svn://svn.chromium.org/blink/trunk@431 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-09 22:14:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9827d5b61257c6404590829ebd7c76e3e9e7c6de');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bu01s2dke6vsep', 1, e'Fixed sizeHint().


git-svn-id: svn://svn.chromium.org/blink/trunk@430 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-09 22:12:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/757068b159231ab7aa57acf613394a65cfac1688');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bv01s27xt08o88', 1, e'Temporary fix to support desktop dimension.


git-svn-id: svn://svn.chromium.org/blink/trunk@429 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-09 22:12:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c550a6b63a1a406a3a7d1a367f4dab38261fee2a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bw01s2qxn8sbit', 1, e'Cleaned up some table rendering issues.
Added some better support for named colors in QColor.
Some cleanups in QBrush and QPen.


git-svn-id: svn://svn.chromium.org/blink/trunk@428 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-09 18:12:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/afb435d542d89fc354e2479bead76a7ba89251b5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bx01s222m9blpo', 1, e'Added checks to validate arguments passed in through public API methods.
Invalid arguments now throw exceptions.


git-svn-id: svn://svn.chromium.org/blink/trunk@427 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-08 21:33:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4ca2b75f6d11ab29fb2c68af30fdf993e5c7c990');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00by01s202z9osi1', 1, e'Adding remaining strings to Localizable.strings files


git-svn-id: svn://svn.chromium.org/blink/trunk@426 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-08 21:30:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fe1d1542b1bf2a31e1676a2bddde736ad8669bec');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00bz01s2kgaowebj', 1, e'More fixes to improve layout.


git-svn-id: svn://svn.chromium.org/blink/trunk@425 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-08 21:15:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/72b3487c5230ea94d2132ccb0487084307d1e28b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c001s2e8gkhwz7', 1, e'Fixes to do page sizing.  And other fixes to get forms to render almost correctly.


git-svn-id: svn://svn.chromium.org/blink/trunk@424 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-08 20:15:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/38ac732cfe4ba489572fa92e132f436e4da9c22a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c101s27qvvchk7', 1, e'A large set of changes:

	- I did a pass over all .mm files in WebCore/src/kwq, adding
	actual return values for all functions that return something
	(there were *many* cases where callers were left dangling).
	- I added numerous log statements throughout the code.
	- I made the log statement system configurable at runtime, so the
	amount of logging can be increased or decreased as desired.
	- I added an implementation for QVariant.
	- I cleaned up the implementations of QBrush and QPen.
	- I made general fixups and cleanups in various places.


git-svn-id: svn://svn.chromium.org/blink/trunk@423 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-08 14:53:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fd340a123df9a8f091696565bf7cd9bc5642a505');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c201s2aooiaj8b', 1, e'Renamed defaults keys to something more friendly such as WebKitStandardFont


git-svn-id: svn://svn.chromium.org/blink/trunk@422 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-08 00:59:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d5e15b33689cb7ef8626ad8bcb9d97e521f117d9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c301s2endi4wej', 1, e'This file has been moved to: Labyrinth/Tests/khtmlview/draw.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@421 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-07 17:45:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dd77b99d11541d9ca9942557a8293e9490ff90d6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c401s2mipn6ed0', 1, e'Added the 7 tier-1 lproj\'s to WebKit including localizable strings


git-svn-id: svn://svn.chromium.org/blink/trunk@420 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-07 03:23:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/51ad90cfb85525004e71a095ebfbebe507811171');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c501s2w3und6yg', 1, e'Added the 7 tier-1 lproj\'s to WebKit including localizable strings


git-svn-id: svn://svn.chromium.org/blink/trunk@419 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-07 03:00:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7126899fb43ecbf374806aa9cb5a24329b62a84f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c601s2iwhpj9e2', 1, e'Added the 7 tier-1 lproj\'s to WebKit including localizable strings


git-svn-id: svn://svn.chromium.org/blink/trunk@418 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-07 02:52:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fdee9bc4227d8c05fe5e58a9ffdf52169d749cef');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c701s29dryntj5', 1, e'i18n now fetches WebKit\'s localized strings


git-svn-id: svn://svn.chromium.org/blink/trunk@417 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-07 02:44:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2d1b1c1718fe318195e01f55830b72f78b346ccb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsuy6n00c801s2mlwr94fl', 1, e'Support for forms.  Incomplete.  Lots of problems.


git-svn-id: svn://svn.chromium.org/blink/trunk@416 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-06 22:53:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2ef1097a8d3e6ed636618309b4cecdf502ddcded');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000c901s2lmm8xuxm', 1, e'Fixed compiler warning that actually turned out to be a bug!  Imagine that.


git-svn-id: svn://svn.chromium.org/blink/trunk@478 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-07 18:45:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e19678432d2bd46eca06e8f9e9c8d620023f2bb9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ca01s2tad01gq5', 1, e'	* Cache.subproj/NSURICacheData.m: (+[NSURICacheData
	dataWithURL:status:error:data:size:notificationString:userData:]),
	(-[NSURICacheData
	initWithURL:status:error:data:size:notificationString:userData:]):
	Remove redundant semicolons between the end of the prototype and
	the open brace, because they confuse the changelog script.


git-svn-id: svn://svn.chromium.org/blink/trunk@477 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-06 19:09:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eebc204f38a55d5b32ae81b4066aabd54a1da80a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cb01s2c4m0pk6l', 1, e'	* prepare-ChangeLog: Script to automatically generate a skeleton
	ChangeLog entry. Run it as ./prepare-ChangeLog from the Labyrinth
	top level, after settimg the EMAIL_ADDRESS environment variable.

	* ChangeLog, WebCore/ChangeLog, WebKit/ChangeLog: Added top-level
	ChangeLog and ChangeLogs for WebCore and WebKit.


git-svn-id: svn://svn.chromium.org/blink/trunk@476 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-06 18:59:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/649e95d1e3802febcf45768eb7e9a759a4df6237');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cc01s2nv2oigyv', 1, e'Deleted reference to InterThreadMessaging files


git-svn-id: svn://svn.chromium.org/blink/trunk@475 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-06 18:13:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/63eb3783fb367400fbd84d44667fe535590a073b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cd01s2mgf0oxod', 1, e'This is my first attempt at getting the build server to work, and in
removing our dependency and a hardcoded symroots directory.


git-svn-id: svn://svn.chromium.org/blink/trunk@474 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-06 17:52:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d67df80540e6de37cd29991d756acaac3f917935');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ce01s2tj3yyoq1', 1, e'Cleaned up some memory leaks associated created by the threads that
handle load throttling.
Some other memory cleanups as well.


git-svn-id: svn://svn.chromium.org/blink/trunk@473 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-04 18:20:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/173c9882f1ff5c7cea7d105cbf00cbcc02212e90');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cf01s2f6x2h05j', 1, e'Changes that make the back and forward button work.
As a bonus, we also get a progress indicator for page loads.


git-svn-id: svn://svn.chromium.org/blink/trunk@471 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-30 20:49:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/030ea4583821d3d118befc21f91d319e2978b813');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cg01s2x4qremkb', 1, e'
Lots of little changes.  More stubbling towards getting events to work.


git-svn-id: svn://svn.chromium.org/blink/trunk@470 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-30 02:02:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f350cf3df96590f3993bb2fe37828afe169537a6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ch01s2as98r5pu', 1, e'Various clean ups to the loader code.
Added first hacks at the history portion of the framework.


git-svn-id: svn://svn.chromium.org/blink/trunk@469 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-29 17:31:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b96f3cd9175dba07f8e34b44a8076f1f6bff4b07');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ci01s2ba3n4fxf', 1, e'First pass at events, very messy.


git-svn-id: svn://svn.chromium.org/blink/trunk@468 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-21 23:47:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dad0521f757a918cf8c44c715be7a9cea9ca34e2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cj01s2z597aznc', 1, e'Fixes some rendering issues, like those that sniff for browser types
and versions. As part of this, we now send a MSIE User-Agent string.


git-svn-id: svn://svn.chromium.org/blink/trunk@467 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-20 21:57:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b1777e3f5560ff9fc8bb6bccd61ebb8f978b0b49');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ck01s2lq4e0nfr', 1, e'Fixed "double letter" problem that resulted from a too-naive fix of the
"underline" bug. Both should be fixed now.


git-svn-id: svn://svn.chromium.org/blink/trunk@466 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-20 19:30:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/89ccf87f3afc3ea9166f77f323e307e46e0df91d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cl01s2p2l320ue', 1, e'More changes tweaking the text layout/drawing implementation.
Changed the size of the list item bullets.


git-svn-id: svn://svn.chromium.org/blink/trunk@465 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-20 19:04:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6e8297a78699501b451e829f7207f252590a6b17');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cm01s2g1x3tw3g', 1, e'Performance tuning tricks.


git-svn-id: svn://svn.chromium.org/blink/trunk@464 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-19 23:19:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/208acb80656f46f1dcff3561d978d8b33093fc23');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cn01s2a71pv897', 1, e'Fixed bug in a debug statement


git-svn-id: svn://svn.chromium.org/blink/trunk@463 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-16 19:45:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/42a73893bcdff948f4b9994b9811084cab114dad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000co01s2ngbokftz', 1, e'Removed all NSLog statements from the code base, replacing them with
KWQDEBUG/WEBKITDEBUG statements.
Added some assertion macros to the WebCore and the WebKit.


git-svn-id: svn://svn.chromium.org/blink/trunk@462 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-16 19:37:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fd3ab44f0cb608005130e3392b33cd2a2e32bc65');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cp01s2z99t0j1e', 1, e'Changes to the make system to support building via make with the -j option


git-svn-id: svn://svn.chromium.org/blink/trunk@461 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-16 16:20:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3ae4b78e12dbb1fc4d492478502b0673e042817e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cq01s2vfzt28ic', 1, e'Changed standard default font sizes.
Fixed relative URL problem.
Fixed color names of the form #fff.


git-svn-id: svn://svn.chromium.org/blink/trunk@460 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-16 03:40:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2deed2bbf354d7a5ea9d4b48ed405bcf51dd4785');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cr01s2sejbobmr', 1, e'This fixes one major source of bugs we have been experiencing.
The change is in adding back in some support for text decoding. This
takes the place of some code that was using unterminated byte strings
as c-style strings (with the unpredictable results one might expect).


git-svn-id: svn://svn.chromium.org/blink/trunk@459 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-16 01:04:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/10d066ea09be454320638dfddda34a6a9d96043a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cs01s2vxb8u10o', 1, e'Work in progress on getting loads working more efficiently


git-svn-id: svn://svn.chromium.org/blink/trunk@458 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-15 17:35:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/55eef01209a07cf418f1c767ed5930f350319f40');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000ct01s2ofvymidq', 1, e'Fixed a buffer overrun in leftRight()


git-svn-id: svn://svn.chromium.org/blink/trunk@457 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-15 17:32:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8e30d39d6f9b40285a012318bebb242a16460eb5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cu01s2flbfakzz', 1, e'Fixed color to parse #000 style color names.


git-svn-id: svn://svn.chromium.org/blink/trunk@456 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-15 04:43:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/803f9d1324633f384033ded704f1b524dd6d8865');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cv01s2wdogrfem', 1, e'Debugging functions.


git-svn-id: svn://svn.chromium.org/blink/trunk@455 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-15 03:45:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/866b3fc8f1c87cb885b5015267dbdff8c123601b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cw01s2twbffimn', 1, e'Making sure that functions return proper values


git-svn-id: svn://svn.chromium.org/blink/trunk@454 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-14 23:51:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/833d6920bb8d24442d0d24e5a8eded6f465c4a68');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cx01s2nm5d88of', 1, e'Making sure that functions are return proper values


git-svn-id: svn://svn.chromium.org/blink/trunk@453 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-11-14 20:07:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/30d9af96d513a0f3b7d701adae1918f58a2033f1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cy01s2kb47z6kl', 1, e'I reworked the code that loads data from the network, and sends
notifications to the khtml engine. This should result in some nice speedups


git-svn-id: svn://svn.chromium.org/blink/trunk@452 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-14 17:42:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b68f48f76e9c46bd6e6da627954c6289a663dd5e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000cz01s2cgefgs10', 1, e'Fixed a boo-boo that resulted from Richard\'s checkin last night:
I added a declaration for _initializeWithFont


git-svn-id: svn://svn.chromium.org/blink/trunk@451 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-14 17:42:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a8fb3d13f3db8458b94f5c79ff07a1dd8e01cd62');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000d001s2jn4bateb', 1, e'More optimizations to improve performance of font metrics.


git-svn-id: svn://svn.chromium.org/blink/trunk@450 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-14 01:23:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5c95b63d7199e23ff59221c7540c697768ad087e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dj01s2fvteg0k3', 1, e'Added another .copy() to get around Gramp\'s + QConstString problem


git-svn-id: svn://svn.chromium.org/blink/trunk@492 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-12 02:37:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ce7ef12e8bfbde8d1d0dc5017beb797ce57eecfb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000d101s2gxfau0ft', 1, e'Worked on rendering "background" images:

        - Images set as the page bg in body tgas now works
        - Images set as table backgrounds now works


git-svn-id: svn://svn.chromium.org/blink/trunk@449 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-11-13 23:50:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3815c92b698fe06304b542756d24f6c69fb9c67a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv00000d201s2vg64plqe', 1, e'Fixed daffy window resize problems.


git-svn-id: svn://svn.chromium.org/blink/trunk@448 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-11-13 22:38:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/af9de0ef74d7de607a31cf75acb81c52c0bfff23');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d301s2mhcize34', 1, e'        Added header files by chopping up the CacheAPI.h document I have been working on.

        * Cache.subproj/WKLoadChunk.h:
        * Cache.subproj/WKWebCache.h:
        * Cache.subproj/WKWebCacheClient.h:
        * Cache.subproj/WKWebContentType.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@508 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-17 22:54:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c9d0bebe05468bb4ac06c48c8db1004d6956b6e5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d401s2pzge72qg', 1, e'        Did some verb tense cleanup.

        * Documentation/WebKit-White-Paper/WebKit-White-Paper.html:


git-svn-id: svn://svn.chromium.org/blink/trunk@507 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-17 22:21:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3b6cd98c41f64ab3f00d000d3bc6c00b7e88002e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d501s29r219mul', 1, e'        Added the current draft of the WebKit white paper.

        * Documentation/WebKit-White-Paper/WebKit-White-Paper.html:
        * Documentation/WebKit-White-Paper/images/webkit-cache-loader.jpg:


git-svn-id: svn://svn.chromium.org/blink/trunk@506 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-17 22:08:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/186d17a18156acd24b02b8f4910d37b98463f88f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d601s293sy5mw6', 1, e'	Simplified WKLocationChangeHandler and updated
	WKAuthenticationHandler.

	* WebView.subproj/WKWebController.h:
	(WKWebDataSource): Renamed methods to be forDataSource, not
	byDataSource.
	(-[WKWebDataSource locationChangeInProgressForDataSource:]): Added.
	(-[WKWebDataSource locationChangeDone:forDataSource:]): Added as a
	collapsed version of locationChangeCancelled:,
	locationChangeStopped: and locationChangeFinished:.
	(WKSimpleAuthenticationResult, WKSimpleAuthenticationRequest):
	made these interfaces instead of structs.


git-svn-id: svn://svn.chromium.org/blink/trunk@505 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-15 02:19:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/08504eead624a68f4dbb7912fbc72beb90274278');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d701s2o613it95', 1, e'Added files to temporarily hold incomplete API.


git-svn-id: svn://svn.chromium.org/blink/trunk@504 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-15 01:59:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2437beae833f7d9dc5a86220eda8b9383acc1868');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d801s2jtnjzdnd', 1, e'	Minor cleanups, mostly for naming consistency.

	* WebView.subproj/WKWebController.h:
	(WKSimpleAuthenticationRequest) name field `url\', not `uri\'.
	(-[WKWebDataSourceErrorHandler receivedError:forDataSource:]):
	renamed from `error:inDataSource:\' so that it\'s a verb phrase.

	* WebView.subproj/WKWebDataSource.h:
	(-[WKWebDataSource initWithURL:]): Rename `inputUrl\' argument to
	`inputURL\'.
	(-[WKWebDataSource initWithLoader:]): Change argument type from
	`WKURILoader\' to `WKLoader\'.
	(-[WKWebDataSource wasRedirected]): Renamed from `isRedirected\',
	the past tense seems more appropriate here.
	(-[WKWebDataSource setJavaEnabled:]): Add missing semicolon.
	(-[WKWebDataSource pluginsEnabled:]): renamed from `pluginEnabled\'
	for consistency with `setPluginsEnabled:\'.

	* WebView.subproj/WKWebView.h:
	(-[WKWebView fontSizes]): renamed from `fontSize\' for sonsistency
	with `setFontSizes:\'.
	(-[WKWebView setContextMenusEnabled]): renamed from
	\'setEnableContextMenus:\' for consistency with
	`contextMenusenabled\'.


git-svn-id: svn://svn.chromium.org/blink/trunk@503 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-14 23:06:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d57d4ee2f44a51821d83720a08ea9a032e1b4e6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200d901s2n46fyg1k', 1, e'Fixed spelling mistake.


git-svn-id: svn://svn.chromium.org/blink/trunk@502 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-14 21:42:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/65038169ac2f072e156f69cfa23cb2664a605712');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200da01s2jbkd2yvh', 1, e'	After discussion with Don, Removed all methods relating to
	resolved URLs, since browsers don\'t actually treat aliases
	specially.

	* WebView.subproj/WKWebController.h: removed inputURLresolvedTo: methods.
	* WebView.subproj/WKWebDataSource.h: remove resolvedURL method,
	and mentions of it in comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@501 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-14 19:23:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2294f2ac32281fd44b6202b9a0e15eb28b690e18');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200db01s2q6n37atj', 1, e'WebCore changes:

	Changes for international character set support. Still needs work,
	but no worse than before. amazon.co.jp renders almost correctly.

	* src/kwq/KWQCharsets.h, src/kwq/KWQCharsets.mm:
	(KWQCFStringEncodingFromIANACharsetName,
	KWQCFStringEncodingFromMIB, KWQCFStringEncodingToIANACharsetName,
	KWQCFStringEncodingToMIB): New functions that translate between
	the Qt concept of charaxcter sets and the
	(buildDictionaries): static helper function for the above.
	* src/kwq/KWQtextcodec.mm: (codecForCFStringEncoding,
	QTextCodec::codecForMib), QTextCodec::codecForName,
	QTextCodec::codecForLocale, QTextCodec::name,QTextCodec::mibEnum):
	Implement for real.
	* src/kwq/KWQKCharsets.mm: (KCharsets::codecForName,
	KCharsets::charsetForEncoding, KCharsets::charsetForEncoding):
	Implement for real.
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::slotData): Get encoding
	from headers if present.
	(encodingFromContentType): Helper function for the above.
	(KHTMLPart::begin): Reinitialize decoder for every page.
	(KHTMLPart::write): Minor bug fix.
	(KHTMLPart::setEncoding): Implement.
	(KHTMLPart::khtmlMouseMoveEvent,
	KHTMLPart::khtmlMouseReleaseEvent, KHTMLPart::checkCompleted):
	Simplify ifdefs to make prepare-ChangeLog happy.
	* src/kwq/qt/qstring.h, src/kwq/KWQString.mm:
	(QString::fromCFString): New convenience method to create a
	QString from an immutable CFString by copying,
	* src/kwq/character-sets.txt: IANA document describing character
	sets.
	* src/kwq/make-charset-table.pl, src/kwq/make-mac-encodings.c:
	Helper programs to construct charset tables from IANA document.
	* src/kwq/Makefile.in: Update to handle the autogenerated code.
	* src/kwq/.cvsignore: Ignore new autogenerated files.

	* src/kdelibs/khtml/misc/decoder.cpp: (Decoder::decode): Fix
	decoding when the encoding is specified in the http headers (which
	seems like it could never have worked in KDE).

	* include/WCBackForwardList.h, include/WCURICache.h,
	include/WCURICacheData.h, include/WCURIEntry.h: Fix prototypes of
	C functions with no arguments to use (void), not (), to avoid
	warnings in WebKit.

WebKit changes:

	Warning fixes and support to pass the http headers along with
	cache data items

	* Cache.subproj/NSURICacheData.h, Cache.subproj/NSURICacheData.m:
	(+[NSURICacheData
	dataWithURL:status:error:headers:data:size:notificationString:userData:],
	-[NSURICacheData
	initWithURL:status:error:headers:data:size:notificationString:userData:]),
	-[NSURICacheData dealloc], -[NSURICacheData error],
	-[NSURICacheData headers]:
	NSURICacheData now carries a copy of the response headers
	dictionary.
	* Cache.subproj/NSURICache.m: include "WCURICache.h" to fix warnings.
	(-[NSURICache requestWithURL:requestor:userData:]):
	Handle headers in CacheData.
	* Cache.subproj/NSURILoad.h, Cache.subproj/NSURILoad.m:
	(-[NSURILoad __NSURILoadReadStreamCallback:event:data:],
	-[NSURILoad headers], -[NSURILoad dealloc], -[NSURILoad done]):
	An NSURILoad object now carries the response headers associated
	with its connection, if any.

	* History.subproj/WKBackForwardList.m: include WCBackForwardList.h
	to fix warning.
	* History.subproj/WKURIEntry.m: include WCURIEntry.h to fix
	warning.
	* Misc.subproj/WebKitDebug.h: Use (void) for C prototypes, not ().
	* WebView.subproj/NSWebPageDataSource.mm: (+[NSWebPageDataSource
	initialize]): Remove unused variable to fix warning.
	* WebKit.pbproj/project.pbxproj: Enable many warning flags and -Werror


git-svn-id: svn://svn.chromium.org/blink/trunk@500 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-14 06:57:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ef1f38d2aab6f2e18b04e6f696ca6dedc06d901d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dc01s2dvzoq0pm', 1, e'	* WebView.subproj/WKWebController.h: Defined initial version of
	WKAuthenticationHandler interface, and associated
	WKSimpleAuthenticationRequest and WKSimpleAuthenticationResult
	structs.


git-svn-id: svn://svn.chromium.org/blink/trunk@499 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-14 02:34:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ebc1b3a123b8c1a00596c228328ba0307e976227');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dd01s2nn6x1iap', 1, e'More revisions to API.


git-svn-id: svn://svn.chromium.org/blink/trunk@498 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-14 00:09:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/66fd9fe86f5e50a3179d80f2b769433f3cb2c12b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200de01s2znmlyz0a', 1, e'Changes to support the model being a tree of documents.


git-svn-id: svn://svn.chromium.org/blink/trunk@497 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-13 22:02:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d9cc527c351d347d0ac1853499f852208e93da11');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200df01s2v2w58ana', 1, e'More changes and notes based on our API discussion meetings.


git-svn-id: svn://svn.chromium.org/blink/trunk@496 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-13 01:36:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f6a18b8eea89b74641c660af646a34f3230b5ea8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dg01s2zjf4s5yt', 1, e'Fixed a typo.


git-svn-id: svn://svn.chromium.org/blink/trunk@495 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-12 03:28:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/426e3619ccf1314f32b96b50d9481a269f2ccaf2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dh01s2ls3a5b77', 1, e'More changes to the WebView API.


git-svn-id: svn://svn.chromium.org/blink/trunk@494 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-12 03:20:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bd7259f1a3c9aa4382cff09c936f522fe5fab290');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200di01s2qx41tbt9', 1, e'Didn\'t mean to make last commit


git-svn-id: svn://svn.chromium.org/blink/trunk@493 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-12 02:41:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4fdf8ce601a7cbffefc1ee1d08ac715ebd0bbf2f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dk01s2w2xkk86s', 1, e'Added another .copy() to get around Gramp\'s + QConstString problem


git-svn-id: svn://svn.chromium.org/blink/trunk@491 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-12 02:19:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff122596981438309d2305930739bfa1b2581cb9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dl01s2dheo4zco', 1, e'Make deep copy in parseAttribute to fix memory smasher


git-svn-id: svn://svn.chromium.org/blink/trunk@490 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-12-12 00:49:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b2ba6f35db6e17ff2f5fc255af5c0495cf67fc07');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dm01s2ekkmsbpi', 1, e'Properly initialize cache and cacheType members QConstString constructor


git-svn-id: svn://svn.chromium.org/blink/trunk@489 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2001-12-12 00:47:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0b57547b3e9d8fbb079eaaa9e23474d4d40f5161');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dn01s23der3c8h', 1, e'Added debug string so that other could debug this problem: no url being passed to requestObject


git-svn-id: svn://svn.chromium.org/blink/trunk@488 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-11 18:57:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c5d817f4b8a1653ebd8e2ad69d637dfdc62d66e0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200do01s2hq4vh2hd', 1, e'Added http://cb.apple.com/plugin.html to WebViewTest to test plug-ins


git-svn-id: svn://svn.chromium.org/blink/trunk@487 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-11 18:33:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6c987263448c51177885b79164e90d763062d7e3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dp01s2ubailnaw', 1, e'Added default for pluginsEnabled


git-svn-id: svn://svn.chromium.org/blink/trunk@486 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-11 17:53:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/546b0eff808bb71051f0b56ac35bacb73475c6c1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dq01s2ftjg734k', 1, e'	* WebView.subproj/WKWebController.h:
	* WebView.subproj/WKWebDataSource.h:
	* WebView.subproj/WKWebView.h:

	Fixed some typos and misspellings.


git-svn-id: svn://svn.chromium.org/blink/trunk@485 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2001-12-11 01:00:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a0d747f7a9fbdf18a975764c6f30ae0b70a09dfd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dr01s2papvixsw', 1, e'Went back and did a better job of cleaning up the warnings
that resulted from comparing signed and unsigned numbers.

* src/kwq/KWQString.mm: (QString::insert), (QString::remove),
(QString::truncate):


git-svn-id: svn://svn.chromium.org/blink/trunk@484 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-10 21:56:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/20ba3c38dec7296d50cb6ec52517a1be2041c616');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200ds01s2doiv3s9g', 1, e'New API described in headers.


git-svn-id: svn://svn.chromium.org/blink/trunk@483 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-08 02:20:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6dadfdaca97b57f92bdde0ed38c1e68578421643');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dt01s2u7z92dy1', 1, e'Changes to clean up warnings.
Also big swath of new API for WebView and WebdataSource


git-svn-id: svn://svn.chromium.org/blink/trunk@482 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-07 21:58:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7e99013c4ad16776af442099f667cde8c71e3161');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200du01s2jkgt1f05', 1, e'Fixed small bug in a comparison that was making -Wall complain

* src/kwq/KWQString.mm:

Removed -Werror cflag. That\'s probably a bit premature.

* configure:
* configure.in:


git-svn-id: svn://svn.chromium.org/blink/trunk@481 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-07 21:39:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4da1c4a6bc7a6b1e46232b6c8ceb86d6791b7505');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dv01s2a00dz4do', 1, e'I made a pass through the code and cleaned up all compiler warnings
reported by -Wall.
I also added some beginning of support for inlining functions.


git-svn-id: svn://svn.chromium.org/blink/trunk@480 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-07 21:11:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f3b771ed7a7b1f90015a212751d6636e094c65ca');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv1n200dw01s2md349ind', 1, e'Fixed warning


git-svn-id: svn://svn.chromium.org/blink/trunk@479 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-07 18:57:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9e24aa6525afffe853becb0c425d8a75f2505096');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100dx01s2ir7af7i4', 1, e'top level:
	* configure.in: Improve odds of avoiding $ln problem a bit
	more. Also, turn on more c++ warning flags.

	* .cvsignore: Prune cruft.

WebCore:
	* src/kwq/qt/_qpoint.h, src/kwq/qt/_qrect.h, src/kwq/qt/_qsize.h,
	src/kwq/qt/qpoint.h, src/kwq/qt/qrect.h, src/kwq/qt/qsize.h: Make
	QPoint, QRect and QSize easily turn-off-able again.


git-svn-id: svn://svn.chromium.org/blink/trunk@538 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-17 21:50:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/89353d8e51bcab03e881440310ede0c080b745cd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100dy01s20v39bsuq', 1, e'        Added a some more implementations.
        Tweaked the interface to quite a few files.
        Removed all compiler warnings.

        * CacheLoader.subproj/WKHTTPURLHandle.h:
        * CacheLoader.subproj/WKHTTPURLHandle.m: (-[WKHTTPURLHandle
        initWithURL:flags:group:requestMethod:postDict:]), (-[WKHTTPURLHandle
        initWithURL:flags:group:requestMethod:postData:]), (-[WKHTTPURLHandle
        didLoadData:fromStream:]), (-[WKHTTPURLHandle requestMethod]), (-[WKHTTPURLHandle
        setPostData:]), (-[WKHTTPURLHandle contentLength]), (-[WKHTTPURLHandle
        contentLengthReceived]), (-[WKHTTPURLHandle percentComplete]):
        * CacheLoader.subproj/WKURLDiskCache.m: (-[WKURLDiskCache objectForURL:]),
        (-[WKURLDiskCache cacheObject:forURL:]), (-[WKURLDiskCache
        cacheObject:forURL:untilExpiry:]), (-[WKURLDiskCache containsURL:]),
        (-[WKURLDiskCache expiryForURL:]), (-[WKURLDiskCache setExpiryForURL:expiry:]),
        (-[WKURLDiskCache invalidateURL:]), (-[WKURLDiskCache clearCache]),
        (-[WKURLDiskCache setSizeLimit:]), (-[WKURLDiskCache usage]):
        * CacheLoader.subproj/WKURLHandle.h:
        * CacheLoader.subproj/WKURLHandle.m: (+[WKURLHandle initialize]), (+[WKURLHandle
        registerURLHandleClass:]), (+[WKURLHandle URLHandleClassForURL:]), (+[WKURLHandle
        canInitWithURL:]), (-[WKURLHandle didLoadData:fromStream:]), (-[WKURLHandle
        backgroundLoadComplete]), (-[WKURLHandle backgroundLoadFailedWithResultCode:]),
        (-[WKURLHandle availableResourceData]), (-[WKURLHandle statusCode]),
        (-[WKURLHandle resultCode]), (-[WKURLHandle failureReason]):
        * CacheLoader.subproj/WKURLHandleClient.h:
        * CacheLoader.subproj/WKURLLoad.h:
        * CacheLoader.subproj/WKURLLoad.m: (-[WKURLHandle setStatusCode:]),
        (-[WKURLHandle setResultCode:]), (-[WKHTTPURLHandle setResponseHeaders:]),
        (-[WKHTTPURLHandle hasResponseHeaders]), (WKURLLoadReadStreamCallback),
        (+[WKURLLoad initialize]), (+[WKURLLoad URLLoadWithURL:]), (-[WKURLLoad
        initWithURL:]), (-[WKURLLoad addHandle:]), (-[WKURLLoad removeHandle:]),
        (-[WKURLLoad removeAllHandles]), (-[WKURLLoad isEqual:]), (-[WKURLLoad hash]),
        (-[WKURLLoad dealloc]), (+[WKURLLoad incrementConcurrentNetworkLoadsNow]),
        (+[WKURLLoad decrementConcurrentNetworkLoadsNow]), (-[WKURLLoad
        beginNetworkLoad]), (-[WKURLLoad beginHTTPNetworkLoad]), (-[WKURLLoad
        WKURLLoadReadStreamCallback:event:data:]), (-[WKURLLoad statusCode]),
        (-[WKURLLoad resultCode]), (-[WKURLLoad setStatusCode:]), (-[WKURLLoad
        setResultCode:]), (+[WKURLLoad WKURLLoadThrottlerRun:]), (+[WKURLLoad
        WKURLLoadLoaderRun:]), (+[WKURLLoad WKURLLoadSweeperRun:]), (+[WKURLLoad
        WKURLLoadCFStreamHandlerRun:]):
        * CacheLoader.subproj/WKURLLoader.m: (+[WKURLLoader sharedURLLoader]),
        (-[WKURLLoader requestWithURLHandle:]), (-[WKURLLoader
        cancelRequestWithURLHandle:]), (-[WKURLLoader cancelAllRequestsWithURL:]),
        (-[WKURLLoader cancelAllRequestsInGroup:]), (-[WKURLLoader cachedObjectForURL:]),
        (-[WKURLLoader cacheExpiryForURL:]), (-[WKURLLoader
        setCacheExpiryForURL:expiry:]), (-[WKURLLoader expireCachedObjectNow:]),
        (-[WKURLLoader clearAllCaches]):
        * CacheLoader.subproj/WKURLMemoryCache.m: (-[WKURLMemoryCache objectForURL:]),
        (-[WKURLMemoryCache cacheObject:forURL:]), (-[WKURLMemoryCache
        cacheObject:forURL:untilExpiry:]), (-[WKURLMemoryCache containsURL:]),
        (-[WKURLMemoryCache expiryForURL:]), (-[WKURLMemoryCache
        setExpiryForURL:expiry:]), (-[WKURLMemoryCache invalidateURL:]),
        (-[WKURLMemoryCache clearCache]), (-[WKURLMemoryCache setSizeLimit:]),
        (-[WKURLMemoryCache usage]):


git-svn-id: svn://svn.chromium.org/blink/trunk@537 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-16 21:56:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b7b8f07d865fb5fd137a7cdfff410fcb83c02188');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100dz01s2tm0u7mco', 1, e'2002-01-15  Maciej Stachowiak  <mjs@apple.com>

	* src/kdelibs/kjs/Makefile.am: Add missing files to BUILT_SOURCES
	and build rules to fix `make -j3\'


git-svn-id: svn://svn.chromium.org/blink/trunk@536 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-16 02:30:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dcccb61f82912dcf815549f0f6fc959220d672bc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ef01s2zcldfcy1', 1, e'Finally fixed underlining.


git-svn-id: svn://svn.chromium.org/blink/trunk@520 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-19 03:54:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1d4fa0a34cdd144f59fd16c4eea8ba1b848c6028');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100eg01s2y312e1j7', 1, e'        Deleted one little word

        * Documentation/WebKit-White-Paper/WebKit-White-Paper.html:


git-svn-id: svn://svn.chromium.org/blink/trunk@519 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-19 00:20:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e2bd61563fbe3de53f368e2402c51fe00d78272a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e001s2lqa96gmj', 1, e'	Convert build system to automake

	* Makefile.am: Add this
	* Makefile.in: Remove this

	* configure.in:

	Remove newly autogenerated things,

	* aclocal.m4:
	* autogen.sh:
	* config.guess:
	* config.h.in:
	* config.sub:
	* configure:
	* missing:

	* acconfig.h, acinclude.m4: Templates for auto*
	* libtool.diff: Couple of tweaks needed to automake.
	* .cvsignore: Ignore the right stuff

	Add these.

	* Tests/Makefile.am:
	* Tests/draw/Makefile.am:
	* Tests/draw/drawApp/Makefile.am:
	* Tests/khtmlview/Makefile.am:
	* Tests/khtmlview/WebViewTest/Makefile.am:
	* Tests/qt/Makefile.am:

	Remove these.

	* Tests/Makefile.in:
	* Tests/draw/Makefile:
	* Tests/draw/drawApp/Makefile.in:
	* Tests/khtmlview/WebViewTest/Makefile.in:
	* Tests/qt/Makefile.in:

	Tweak link flags.

	* Tests/draw/drawApp/drawApp.pbproj/project.pbxproj:
	* Tests/khtmlview/WebViewTest/WebViewTest.pbproj/project.pbxproj:

	Ignore the right stuff.

	* Tests/khtmlview/.cvsignore:
	* Tests/khtmlview/WebViewTest/.cvsignore:
	* Tests/.cvsignore:
	* Tests/draw/.cvsignore:
	* Tests/qt/.cvsignore:

	* Tests/harness.c: Fix a couple of warnings.

	* Tests/qt/qarray-test.chk, Tests/qt/qarray-test.cpp (main):
	Remove a faulty test case: can\'t count on contents of
	uninitialized array!

	* Tests/test.list: Add a newly-enabled javascript test.

	* Updates/install-automake.sh,
	Updates/automake-1.5-mac-ported.diff, Updates/update:
	Install automake 1.5 as an update, patch for Mac OS X

	* Updates/install-gperf.sh: Fix potential minor bug for blind cut
	& pasters.


git-svn-id: svn://svn.chromium.org/blink/trunk@535 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-14 19:21:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e11622bbddf34875a2b516ce8939da5588c4112b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e101s2ga6e8j3d', 1, e'iFinally fixed underlining, HONEST!


git-svn-id: svn://svn.chromium.org/blink/trunk@534 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-10 03:38:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/418ab76c61c7cb392b6238e630894d130504fbec');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e201s2y8wxl120', 1, e'Passing mouse events to plug-ins


git-svn-id: svn://svn.chromium.org/blink/trunk@533 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-10 00:26:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2e8c4bde71d2dba72b338a29193d3a5abdc8db91');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e301s2s6zlxjz5', 1, e'Fixed header problem


git-svn-id: svn://svn.chromium.org/blink/trunk@532 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-09 01:44:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/992f4cff2238d7cb6d445fb04ad255b7dbd972c8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e401s2cn7h5u6d', 1, e'Now sending null events to plug-ins


git-svn-id: svn://svn.chromium.org/blink/trunk@531 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-09 00:54:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fe103db532d3323297007ee23218c7075924bfcc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e501s2rcciocjt', 1, e'Fixed plug-in positioning


git-svn-id: svn://svn.chromium.org/blink/trunk@530 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-08 23:21:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f8740c4b87b68b8b1b196b8d16350eb4ad0883b6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e601s2mo4hpjsa', 1, e'Plug-ins now rendering


git-svn-id: svn://svn.chromium.org/blink/trunk@529 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-08 20:51:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5d4163a365ef63bd975375b9f98867674dd3bec8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e701s2a8iswvqc', 1, e'Now passing drawing coordinates to plug-in instances


git-svn-id: svn://svn.chromium.org/blink/trunk@528 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-08 20:18:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/99558d035a299ce4a9ff3055d10674f988dd3fc8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e801s2bddm5g77', 1, e'Now passing drawing coordinates to plug-in instances


git-svn-id: svn://svn.chromium.org/blink/trunk@527 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-08 20:17:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/49711323522f1cf9044623e7d3118ff8a7f095ed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100e901s2ckypsot7', 1, e'Moved plug-in instance creation to WKPluginView from WKPlugin


git-svn-id: svn://svn.chromium.org/blink/trunk@526 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-07 21:38:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d0f6f924faf38c9f4d5add50c8681f7ff5ee5298');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ea01s28odstqn0', 1, e'Moved plug-in instance creation to WKPluginView from WKPlugin


git-svn-id: svn://svn.chromium.org/blink/trunk@525 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-07 21:37:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/687355e92ddb43b7d8748672626e1e11eb5dd1a2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100eb01s2obai49uo', 1, e'Moved plug-in instance creation to WKPluginView from WKPlugin


git-svn-id: svn://svn.chromium.org/blink/trunk@524 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-07 21:31:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bb701b354b2efe8592dbe346e3fcc8803875cd70');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ec01s2d07uryt8', 1, e'Just updated a bunch of .cvsignore files.


git-svn-id: svn://svn.chromium.org/blink/trunk@523 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2001-12-21 18:58:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b9fab0aa823dab586895bc9315c52a9b6ef4db23');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ed01s2kopgrhzx', 1, e'More tweaks to text underlining.


git-svn-id: svn://svn.chromium.org/blink/trunk@522 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-21 03:02:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b7b65718bf5c3e2ea941fca4d8ecbfbd585298ed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ee01s225oe138u', 1, e'Top level:

	* prepare-ChangeLog: Improved C++ support; handle constructor
	initializers and operator overloads properly, and ignore the const
	qualifier so const methods get picked up.

	Various changes relating to reduction in borrowed classes:

	* Tests/qt/qpoint-test.chk, Tests/qt/qpoint-test.cpp,
	Tests/qt/qrect-test.chk, Tests/qt/qrect-test.cpp,
	Tests/qt/qsize-test.chk, Tests/qt/qsize-test.cpp: Disable tests
	that don\'t apply to new versions of these classes.

	* borrowed-classes.txt: Turn off QPoint, QSize, QRect.

WebCore:

	* src/kwq/KWQCString.mm: (QCString::QCString),
	(QCString::isEmpty), (QCString::isNull), (QCString::length): Fix
	some bugs found by the test suite in the emptiness/null semantics.

	Reimplement QPoint, QSize and QRect:

	* src/kwq/qt/qpoint.h, src/kwq/qt/qrect.h, src/kwq/qt/qsize.h:
	Update.
	* src/kwq/KWQPoint.mm: (QPoint::QPoint), (QPoint::x), (QPoint::y),
	(QPoint::manhattanLength), (operator+), (operator-), (operator<<):
	Fresh implementations.
	* src/kwq/KWQRect.mm: (QRect::QRect), (QRect::isNull), (QRect::isValid),
	(QRect::x), (QRect::y), (QRect::left), (QRect::top), (QRect::right),
	(QRect::bottom), (QRect::width), (QRect::height), (QRect::topLeft),
	(QRect::size), (QRect::setWidth), (QRect::setHeight), (QRect::intersect),
	(QRect::intersects), (QRect::operator&), (operator==), (operator!=),
	(operator<<): Likewise.
	* src/kwq/KWQSize.mm: (QSize::QSize), (QSize::isValid), (QSize::width),
	(QSize::height), (QSize::setWidth), (QSize::setHeight), (QSize::expandedTo),
	(operator+), (operator==), (operator!=), (operator<<): Likewise.
	* src/kwq/qt/_qpoint.cpp, src/kwq/qt/_qrect.cpp,
	src/kwq/qt/_qsize.cpp: Disable the whole file contents when
	building.
	* src/kwq/Makefile.in: Add new files to build.

	Start moving away from QShared so we can remove it:

	* src/kwq/qt/qbrush.h, src/kwq/KWQBrush.mm: (QBrush::QBrush),
	(QBrush::color),
	(QBrush::setColor), (QBrush::style), (QBrush::setStyle),
	(QBrush::operator==), (QBrush::operator!=): Don\'t use shared data
	for this simple value object, the optimization value is
	quastionable anyway.
	* src/kwq/qt/qpen.h, src/kwq/KWQPen.mm: (QPen::QPen),
	(QPen::color), (QPen::width), (QPen::style),
	(QPen::setColor), (QPen::setWidth), (QPen::setStyle),
	(QPen::operator==): Likewise.
	* src/kwq/KWQPainter.mm: (QPainter::setPen), (QPainter::setBrush):
	Update for changes to pen.
	* src/kwq/KWQRefPtr.h: New reference-counted pointer template.
	* src/kwq/qt/qguardedptr.h, src/kwq/KWQGuardedPtr.mm:
	(QGuardedPtrPrivate::QGuardedPtrPrivate): Use KWQRefPtr instead of
	QShared.
	* src/kwq/qt/qvariant.h, src/kwq/KWQVariant.mm:
	(QVariant::QVariant), (QVariant::~QVariant),
	(QVariant::operator=): Use KWQRefPtr instead of
	QShared.
	* src/kwq/qt/qnamespace.h: Remove private constructor and
	destructor since people want to subclass this.

	* src/kwq/_KWQOwner.h: Add include guards and standard license.

	* src/kdelibs/khtml/ecma/kjs_binding.h: Add include of qvariant.h,
	how could stuff ever compile without this?


git-svn-id: svn://svn.chromium.org/blink/trunk@521 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-19 04:39:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/51352cb4dfc5fd1f32ecb44a732407222682df27');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100eh01s2vjbbwqjj', 1, e'Restructing of headers in prepartion for implementation.  Added new WK*
headers to PB project description.


git-svn-id: svn://svn.chromium.org/blink/trunk@518 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-19 00:08:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df0adfdf2af392a2a34d2bfe19039a0ca86cbbd7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ei01s2kf00z5oi', 1, e'        Updated based on comments from John and Richard

        * Documentation/WebKit-White-Paper/WebKit-White-Paper.html:
        * Documentation/WebKit-White-Paper/images/webkit-cache-loader.jpg:


git-svn-id: svn://svn.chromium.org/blink/trunk@517 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-19 00:01:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f6b9d7dc2b68ef83a020a88c493438b8d572d6fd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ej01s28hc7wn78', 1, e'	* src/kwq/Makefile.in: Re-apply my changes, which accidentally got
	clobbered.


git-svn-id: svn://svn.chromium.org/blink/trunk@516 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2001-12-18 23:55:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7642756dd9ec1e2fc055528aa815411949d21dde');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ek01s24903zlng', 1, e'        Updated the white paper text and graphics.

        * Documentation/WebKit-White-Paper/WebKit-White-Paper.html:
        * Documentation/WebKit-White-Paper/images/webkit-cache-loader.jpg:
        * Documentation/WebKit-White-Paper/images/webkit-classes.jpg:


git-svn-id: svn://svn.chromium.org/blink/trunk@515 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-18 21:21:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ce7d8b0727681c4230bdd12cab411e0405064d1e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100el01s20e3z4rpi', 1, e'KWQWidget.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@514 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-18 18:23:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d376b66a2b4d10607f601ec5cc93336506ecbff2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100em01s2lgb1hub7', 1, e'WKPluginView.h


git-svn-id: svn://svn.chromium.org/blink/trunk@513 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-18 18:22:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6900faf6401a295a90d61b9113b306e5a90a2c69');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100en01s2oyth699l', 1, e'Initial submission of the plug-in classes


git-svn-id: svn://svn.chromium.org/blink/trunk@512 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2001-12-18 18:21:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2e69b2b6db54b72e4bcf43f5fe0ce8c425d7f1d3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100eo01s2bi0ghu01', 1, e'Added change comments that I was keeping in header files.


git-svn-id: svn://svn.chromium.org/blink/trunk@511 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2001-12-18 17:52:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/be3903ad5d096da030b7fa9d100f4114f6cfe163');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100ep01s23jkvm4cr', 1, e'        Merged "Changes" information into individual files

        * Cache.subproj/WKLoadChunk.h:
        * Cache.subproj/WKWebCache.h:
        * Cache.subproj/WKWebCacheClient.h:
        * Cache.subproj/WKWebContentType.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@510 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-18 17:01:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9735c35aabe33bc50f1cfc3d1d273e7de6dff4eb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv4d100eq01s282sel3q5', 1, e'        Fixed small cpp glitch in WKWebCache.
        Added WKAttributedURL header.
        Updated WKBackForwardList with ifdef\'ed out new design.

        * Cache.subproj/WKWebCache.h:
        * History.subproj/WKAttributedURL.h:
        * History.subproj/WKBackForwardList.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@509 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2001-12-18 00:41:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/06ecc2e94b2f436c536cf5612ad498e7a7de1f1b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00er01s2m1wfbeup', 1, e'Cleaned up frame code.  Fixed duplicate content problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@568 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-30 23:38:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f16c979dd2c0bb7cdcbbbfd914ccfae80dc30fd5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00es01s2rpldsdqw', 1, e'Cleanuped up frame code a bit.  Fixed duplicate content problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@567 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-30 23:37:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df805a02f2866c671be444c48fc21d9010fed67b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00et01s2pgxpu6a0', 1, e'        Added *.lo, *.la, and .libs to .cvsignore files

        * WebCore/.cvsignore:
        * WebCore/src/.cvsignore:
        * WebCore/src/kdelibs/khtml/css/.cvsignore:
        * WebCore/src/kdelibs/khtml/misc/.cvsignore:
        * WebCore/src/kdelibs/kjs/.cvsignore:

        Added *.lo, *.la, Icon, and .libs to .cvsignore files

        * WebFoundation/.cvsignore:

        Added *.lo, *.la, Icon, and .libs to .cvsignore files

        * WebKit/.cvsignore:


git-svn-id: svn://svn.chromium.org/blink/trunk@566 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-30 15:29:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d4eb0e47b42aae65b7956c036ffef0b62fac8a3d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00eu01s2pgpboz0t', 1, e'Fix for John.


git-svn-id: svn://svn.chromium.org/blink/trunk@565 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-30 01:44:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d50268bc8d11d80bd2ccc793f3cffad5969b3a0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ev01s2jtsr6pm2', 1, e'Added setMainView: for John.


git-svn-id: svn://svn.chromium.org/blink/trunk@564 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-30 01:07:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e55a39e13ffa118ca791aa279c97761a5eaf80fc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ew01s2bnjdzvw6', 1, e'Make copy of chars in QConstString constructor.


git-svn-id: svn://svn.chromium.org/blink/trunk@563 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-30 01:06:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8641f589d9ff936ad1fb6442237664c55de3852f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ex01s20hz4cdws', 1, e'2002-01-29  Kenneth Kocienda  <kocienda@apple.com>

        - Some work on response headers.
        - Some work on progress indication/content length.
        - Some beginning of support for synchronous loads.
        - Worked around a smasher that results from not having
        the no-copy NSData object ready yet.

        * CacheLoader.subproj/WKHTTPURLHandle.h:
        * CacheLoader.subproj/WKHTTPURLHandle.m: (-[WKHTTPURLHandle
        setRequestHeader:forKey:]), (-[WKHTTPURLHandle setRequestHeaders:]),
        (-[WKHTTPURLHandle removeRequestHeaderForKey:]), (-[WKHTTPURLHandle
        contentLength]):
        * CacheLoader.subproj/WKHTTPURLProtocolHandler.m: (-[WKHTTPURLProtocolHandler
        performStreamRead:]):
        * CacheLoader.subproj/WKURLHandle.h:
        * CacheLoader.subproj/WKURLHandle.m: (-[WKURLHandleSynchronousClient init]),
        (-[WKURLHandleSynchronousClient WKURLHandleResourceDidBeginLoading:]),
        (-[WKURLHandleSynchronousClient WKURLHandleResourceDidCancelLoading:]),
        (-[WKURLHandleSynchronousClient WKURLHandleResourceDidFinishLoading:]),
        (-[WKURLHandleSynchronousClient
        WKURLHandle:resourceDataDidBecomeAvailable:offset:length:]),
        (-[WKURLHandleSynchronousClient WKURLHandle:resourceDidFailLoadingWithResult:]),
        (-[WKURLHandleSynchronousClient loadFinished]), (-[WKURLHandleSynchronousClient
        lock]), (-[WKURLHandleSynchronousClient unlock]), (-[WKURLHandleSynchronousClient
        waitInterval:]), (-[WKURLHandle loadInForeground]), (-[WKURLHandle
        loadInForeground:]), (-[WKURLHandle contentLength]), (-[WKURLHandle
        contentLengthReceived]), (-[WKURLHandle percentComplete]), (-[WKURLHandle
        dealloc]):
        * CacheLoader.subproj/WKURLLoad.m: (-[WKURLLoad dealloc]):

        - Added in a dummy protocol to clean up a warning that results
        from calling a method on an id.
        - Cleaned up handle variable in KWQKHTMLPart. This can now be freed
        once we get a proper notification that a load is done.
        - Support for reading text encoding from HTTP headers added back in.

        * include/WCURLHandle.h:
        * src/kwq/KWQKHTMLPart.mm: (encodingFromContentType), (KHTMLPart::slotData),
        (KHTMLPart::openURL), (KHTMLPart::closeURL):


git-svn-id: svn://svn.chromium.org/blink/trunk@562 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-30 00:32:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/999d4b23036891432275225ad1ebeae4dfdbad2f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ey01s2z0n2ew4r', 1, e'String fix.


git-svn-id: svn://svn.chromium.org/blink/trunk@561 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-29 23:27:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/88dce9f0d4831eb3dba58f2a9ada4378eaf2f575');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ez01s2t5etdvvs', 1, e'First pass at frame code.  Still needs lots of cleanup.


git-svn-id: svn://svn.chromium.org/blink/trunk@560 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-29 23:14:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6b62f7bac725fec01d56e4b41e007be39e8502ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f001s29f1e7efu', 1, e'First pass at frame code.  Still needs  lots of cleanup.


git-svn-id: svn://svn.chromium.org/blink/trunk@559 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-29 23:14:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ab763b4d824b40868527b0de4a29f0142f816b2f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f101s23q8wni0i', 1, e'2002-01-29  Kenneth Kocienda  <kocienda@apple.com>

        Checked in the missing file

        * include/WCURLHandle.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@558 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-29 16:56:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d82e0abafa3df11d9f0803ee9555075587a4310c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f201s2ax56sotw', 1, e'2002-01-29  Kenneth Kocienda  <kocienda@apple.com>

        These now link with WebFoundation, or contain directives
        for linking with WebFoundation.

        * Tests/draw/drawApp/drawApp.pbproj/project.pbxproj:
        * Tests/khtmlview/WebViewTest/WebViewTest.pbproj/project.pbxproj:
        * Tests/qt/Makefile.am:

        WebBrowser now links with WebFoundation

        * WebBrowser.pbproj/project.pbxproj:

        Changed over to the new cache loader in WebFoundation

        * src/kwq/KWQKHTMLPart.h:
        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient init]), (-[KHTMLPartLoadClient
        WCURLHandleResourceDidBeginLoading:userData:]), (-[KHTMLPartLoadClient
        WCURLHandleResourceDidCancelLoading:userData:]), (-[KHTMLPartLoadClient
        WCURLHandleResourceDidFinishLoading:userData:]), (-[KHTMLPartLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:offset:length:userData:]),
        (-[KHTMLPartLoadClient WCURLHandle:resourceDidFailLoadingWithResult:userData:]),
        (-[KHTMLPartLoadClient dealloc]), (KHTMLPart::slotData), (KHTMLPart::openURL):
        * src/kwq/KWQKjobclasses.mm:
        * src/kwq/KWQKloader.mm: (-[URLLoadClient initWithLoader:]), (-[URLLoadClient
        WCURLHandleResourceDidBeginLoading:userData:]), (-[URLLoadClient
        WCURLHandleResourceDidCancelLoading:userData:]), (-[URLLoadClient
        WCURLHandleResourceDidFinishLoading:userData:]), (-[URLLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:offset:length:userData:]),
        (-[URLLoadClient WCURLHandle:resourceDidFailLoadingWithResult:userData:]),
        (-[URLLoadClient dealloc]):
        * src/kwq/kio/jobclasses.h:

        Many cleanups and changes that resulted from integrating the
        cache/loader into WebViewTest and Alexander.

        * CacheLoader.subproj/WKHTTPURLHandle.m: (-[WKHTTPURLHandle
        initWithURL:flags:group:requestMethod:requestData:]), (-[WKHTTPURLHandle
        dealloc]):
        * CacheLoader.subproj/WKHTTPURLProtocolHandler.m: (-[WKHTTPURLProtocolHandler
        initWithURLLoad:]):
        * CacheLoader.subproj/WKURLData.m:
        * CacheLoader.subproj/WKURLHandle.m: (-[WKURLHandle dealloc]):
        * CacheLoader.subproj/WKURLHandleClient.h:
        * CacheLoader.subproj/WKURLLoad.h:
        * CacheLoader.subproj/WKURLLoad.m: (+[WKURLLoad initialize]), (-[WKURLLoad
        initWithURL:flags:]), (-[WKURLLoad schedule]), (-[WKURLLoad lock]), (-[WKURLLoad
        unlock]), (-[WKURLLoad dealloc]), (-[WKURLLoad beginOriginLoad]), (-[WKURLLoad
        timedOut]), (+[WKURLLoad WKURLLoadCacheCheckerRun:]), (+[WKURLLoad
        WKURLLoadThrottlerRun:]), (+[WKURLLoad WKURLLoadSweeperRun:]), (+[WKURLLoad
        WKURLLoadCFStreamHandlerRun:]):
        * CacheLoader.subproj/WKURLLoadManager.m: (-[WKURLLoadManager
        initWithDefaultStack]), (-[WKURLLoadManager cancelRequestWithURLHandle:]),
        (-[WKURLLoadManager cancelAllRequestsWithURL:]), (-[WKURLLoadManager
        cacheObject:forURL:]), (-[WKURLLoadManager handleURLLoadDone:]),
        (-[WKURLLoadManager handleURLLoadedResourceData:]):
        * CacheLoader.subproj/WKURLMemoryCache.m: (-[WKURLMemoryCache
        truncateToSizeLimit]), (-[WKURLMemoryCache cacheObject:forURL:untilDate:]):
        * WebFoundation.pbproj/project.pbxproj:

        WebKit now links with WebFoundation

        * WebKit.pbproj/kocienda.pbxuser:
        * WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@557 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-29 16:20:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/de6bbe72dd6e44708e0f260ee3adab807c3acb58');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f301s2k75jn1bq', 1, e'Top level:
	* borrowed-classes.txt: Stop borrowing QMap, QDict, QPtrDict and
	QSortedList.

	Added the usual bunch of new test cases, especially for QMap,
	where we also do some glassbox testing and check Red/Black tree
	invariant consistency.

	* Tests/qt/qdict-test.chk:
	* Tests/qt/qdict-test.cpp: (operator<<), (main):
	* Tests/qt/qmap-test.chk:
	* Tests/qt/qmap-test.cpp: (CheckRedBlackRulesAtNode), (CheckRedBlackRules),
	(main):
	* Tests/qt/qptrdict-test.chk:
	* Tests/qt/qptrdict-test.cpp: (operator<<), (main):
	* Tests/test.list:

WebCore:
	Reimplement QDict, QMap, QPtrDict and QSortedList.

	Reimplement QDict in terms of CFDictionary:

	* src/kwq/qt/qdict.h:
	* src/kwq/KWQDictImpl.h:
	* src/kwq/KWQDictImpl.mm: (KWQDictImpl::KWQDictImpl), (KWQDictImpl::insert),
	(KWQDictImpl::remove), (KWQDictImpl::find),
	(KWQDictIteratorImpl::KWQDictIteratorImpl),
	(KWQDictIteratorImpl::currentStringKey):

	Reimplement QMap as a right-threaded red-black tree, splitting
	the work between template classes that manipulate keys and values
	and non-template base classes that handle all the pointer
	manipulation:

	* src/kwq/qt/qmap.h:
	* src/kwq/KWQMapImpl.h:
	* src/kwq/KWQMapImpl.mm: (KWQMapNodeImpl::KWQMapNodeImpl),
	(KWQMapNodeImpl::left), (KWQMapNodeImpl::right), (KWQMapNodeImpl::predecessor),
	(KWQMapNodeImpl::successor), (KWQMapIteratorImpl::KWQMapIteratorImpl),
	(KWQMapIteratorImpl::incrementInternal), (KWQMapImpl::KWQMapImpl),
	(KWQMapImpl::rotateRight), (KWQMapImpl::rotateLeft),
	(KWQMapImpl::rebalanceAfterInsert), (KWQMapImpl::rebalanceAfterRemove),
	(KWQMapImpl::findInternal), (KWQMapImpl::insertInternal),
	(KWQMapImpl::removeInternal), (KWQMapImpl::swap), (KWQMapImpl::countInternal),
	(KWQMapImpl::clearInternal), (KWQMapImpl::beginInternal),
	(KWQMapImpl::endInternal):

	Reimplement QPtrDict in terms of CFDictionary:

	* src/kwq/qt/qptrdict.h:
	* src/kwq/KWQPtrDictImpl.h:
	* src/kwq/KWQPtrDictImpl.mm:
	(KWQPtrDictImpl::KWQPtrDictPrivate::KWQPtrDictPrivate),
	(KWQPtrDictImpl::KWQPtrDictPrivate::~KWQPtrDictPrivate),
	(KWQPtrDictImpl::KWQPtrDictImpl), (KWQPtrDictImpl::~KWQPtrDictImpl),
	(invokeDeleteFuncOnValue), (KWQPtrDictImpl::clear), (KWQPtrDictImpl::count),
	(KWQPtrDictImpl::insert), (KWQPtrDictImpl::remove), (KWQPtrDictImpl::find),
	(KWQPtrDictImpl::swap), (KWQPtrDictImpl::assign), (KWQPtrDictImpl::take),
	(KWQPtrDictIteratorImpl::KWQPtrDictIteratorPrivate::KWQPtrDictIteratorPrivate),
	(KWQPtrDictIteratorImpl::KWQPtrDictIteratorPrivate::~KWQPtrDictIteratorPrivate),
	(KWQPtrDictIteratorImpl::KWQPtrDictIteratorImpl),
	(KWQPtrDictIteratorImpl::~KWQPtrDictIteratorImpl),
	(KWQPtrDictIteratorImpl::count), (KWQPtrDictIteratorImpl::current),
	(KWQPtrDictIteratorImpl::currentKey), (KWQPtrDictIteratorImpl::toFirst),
	(KWQPtrDictIteratorImpl::operator++):

	Reimplement QSortedList:

	* src/kwq/qt/qsortedlist.h:

	* src/kwq/KWQArrayImpl.mm: Remove stray include.

	* src/kwq/Makefile.am: Add new files to build.

	* src/kwq/qt/_qdict.h, src/kwq/qt/_qgdict.h,
	src/kwq/qt/_qptrdict.h: Avoid causing problems when the relevant
	defines are not defined.


git-svn-id: svn://svn.chromium.org/blink/trunk@556 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-29 11:49:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2a0b2237b099deba1af764bcce5a7d66d5f51994');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f401s2yd6hb3sd', 1, e'2002-01-23  Ken Kocienda  <kocienda@apple.com>

        Took out @executable_path hack added for Alexander demo.
        This should clear up a class of crash-on-launch issues.

        * WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@555 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-24 00:29:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/630a3544530180ae386a4f4ddf43a06402077fa5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f501s2fc8sdi71', 1, e'Implemented KWQDesktopWidget to represent main screen.  Used by javascript.


git-svn-id: svn://svn.chromium.org/blink/trunk@554 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-22 22:03:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/09dec687c55f030de157aa32e01bf394d48473b1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f601s2bin0vemn', 1, e'Top level:
	Turn off some borrowed classes, improve test coverage, and improve
	build stability.

	* borrowed-classes.txt: Turn off borrowed QArray, QBuffer,
	QStringList and QStack.

	# Add many new test cases for these classes, passed by both the old
	and the new versions:

	* Tests/qt/qarray-test.chk:
	* Tests/qt/qarray-test.cpp: (main):
	* Tests/qt/qbuffer-test.chk:
	* Tests/qt/qbuffer-test.cpp: (main):
	* Tests/qt/qstack-test.chk:
	* Tests/qt/qstack-test.cpp: (main):
	* Tests/qt/qstringlist-test.chk:
	* Tests/qt/qstringlist-test.cpp: (main):
	* Tests/test.list:
	* Tests/qt/Makefile.am:

	# Change how we define the USING defines a bit to make it more
	generic. Also, be more paranoid abot the dreaded \'$ln\' problem.

	* acconfig.h:
	* autogen.sh:
	* configure.in:

WebCore:
	Reimplemented QArray, QBuffer, QStack and QStringList; also fixed
	some files for borrowed switchability, and fixed some bugs found
	by my new test cases.

	# Reimplement QArray:

	* src/kwq/qt/qarray.h:
	* src/kwq/KWQArrayImpl.h:
	* src/kwq/KWQArrayImpl.mm: (KWQArrayImpl::KWQArrayPrivate::KWQArrayPrivate),
	(KWQArrayImpl::KWQArrayPrivate::~KWQArrayPrivate), (KWQArrayImpl::KWQArrayImpl),
	(KWQArrayImpl::~KWQArrayImpl), (KWQArrayImpl::operator=), (KWQArrayImpl::at),
	(KWQArrayImpl::data), (KWQArrayImpl::size), (KWQArrayImpl::resize),
	(KWQArrayImpl::duplicate), (KWQArrayImpl::fill), (KWQArrayImpl::operator==):

	# Reimplement QBuffer:

	* src/kwq/qt/qbuffer.h:
	* src/kwq/KWQBuffer.mm: (QBuffer::QBuffer), (QBuffer::~QBuffer),
	(QBuffer::buffer), (QBuffer::size), (QBuffer::isOpen), (QBuffer::open),
	(QBuffer::close), (QBuffer::writeBlock):
	* src/kwq/qt/qiodevice.h:

	# Reimplement QStringList:

	* src/kwq/KWQStringList.mm: (QStringToCFString), (QStringList::split),
	(QStringList::QStringList), (QStringList::~QStringList), (QStringList::join),
	(QStringList::operator=):

	# Reimplement QStack:
	* src/kwq/qt/qstack.h:

	* src/kwq/Makefile.am: Add new files to build.

	* src/kwq/KWQString.mm: (QString::find): Fix bug which returned
	the very first occurence in the string even when the optional
	starting point was passed in. Some of my new regression tests
	picked this up.

	# Temporarily work around uses of non-kwq APIs:

	* src/kwq/WKPluginWidget.h:
	* src/kwq/qt/_qfile.cpp
	* src/kwq/qt/_qbuffer.cpp

	# Guard contents of all these with the appropriate USING ifdef:

	* src/kwq/KWQStrList.h:
	* src/kwq/qt/_qarray.h:
	* src/kwq/qt/_qgarray.h:
	* src/kwq/qt/_qstrlist.h:

WebFoundation:
	* .cvsignore: Ignore generated files.


git-svn-id: svn://svn.chromium.org/blink/trunk@553 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-22 07:51:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f3e78f39532c9d7a259f2a32a749cd5f19a90153');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f701s2tjvlziwy', 1, e'Fixing dependency issue with stdarg


git-svn-id: svn://svn.chromium.org/blink/trunk@552 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-21 22:42:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6981a05b5d36d4141bd9b17899b59c7773057308');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f801s2u6vm2klm', 1, e'	* WebView.subproj/WKWebController.h:
	* WebView.subproj/WKWebView.h:
	Changed WKConcreteWebController to WKDefaultWebController in a
	couple of comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@551 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-01-21 17:33:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/461121ed21d913f9bcb89d075829b1e05f2a96d8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00f901s2jzfbtr9c', 1, e'	* src/kdelibs/kjs/Makefile.am: Fix testkjs build.

	Fix a couple more static initialization problems:
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::urlCursor):
	* src/kwq/KWQRegion.mm: (QRegion::QRegion), (QRegion::operator=):

	* src/.cvsignore, src/kdelibs/.cvsignore,
	src/kdelibs/khtml/css/.cvsignore,
	src/kdelibs/khtml/misc/.cvsignore, src/kdelibs/kjs/.cvsignore:
	Ignore stamp files.


git-svn-id: svn://svn.chromium.org/blink/trunk@550 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-19 08:58:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/060b14f3b123e2d18d132da6c0440dfe63fc8a54');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fa01s2nkhyf1ep', 1, e'    First pass at new view/datasource/controller API.


git-svn-id: svn://svn.chromium.org/blink/trunk@549 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-19 02:27:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ce288394714783f252dfcdd0a7068948b98542ae');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fb01s20ce027gt', 1, e'Top level:
	* coding_guidelines.txt: Updated to describe format for private
	fields.

WebCore:
	Avoid static initialization of objects as much as possible. Order
	of static initializers is unpredictable and we had some
	cross-dependencies, so avoid this practice as much as possible to
	fix various startup crashes.

	* src/kwq/KWQApplication.mm: (QApplication::palette),
	(QApplication::globalStrut):
	* src/kwq/KWQChar.mm:
	* src/kwq/KWQColor.mm:
	* src/kwq/KWQCursor.mm: (QCursor::QCursor), (QCursor::~QCursor):
	* src/kwq/KWQEvent.mm:
	* src/kwq/KWQKConfigBase.mm: (KConfigBase::readEntry),
	(KConfigBase::readColorEntry), (KConfigBase::readListEntry):
	* src/kwq/KWQKHTMLSettings.mm: (KHTMLSettings::encoding):
	* src/kwq/KWQKJavaEmbed.mm: (KJavaEmbed::sizeHint),
	(KJavaEmbed::minimumSizeHint):
	* src/kwq/KWQKLocale.mm: (KLocale::language):
	* src/kwq/KWQKMimeType.mm: (KMimeType::findByURL), (KMimeType::name):
	* src/kwq/KWQKPrinter.mm: (KPrinter::margins):
	* src/kwq/KWQKProtocolManager.mm: (KProtocolManager::httpProxy):
	* src/kwq/KWQKWinModule.mm: (KWinModule::workArea):
	* src/kwq/KWQKjobclasses.mm:
	* src/kwq/KWQKnetaccess.mm:
	* src/kwq/KWQPart.mm: (KParts::Part::widget), (KParts::ReadOnlyPart::url):
	* src/kwq/KWQPixmap.mm: (QPixmap::mask):
	* src/kwq/KWQToolTip.mm: (QToolTip::palette):
	* src/kwq/kde/_kurl.cpp:
	* src/kwq/kdecore/kurl.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@548 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 23:39:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/67d4323eba8c002eedf0a3d3086f02dad2d9a603');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fc01s28if4vjsj', 1, e'Renamed KWQPlugin to WKPluginWidget


git-svn-id: svn://svn.chromium.org/blink/trunk@547 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-18 18:38:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/55eed6bc7666521f0bd3b69773604eaec8cbc728');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fd01s2e89ohs3p', 1, e'	Fix a couple of problems that kept `make -j3\' from working from a
	clean start (use stamp files to serialize build a bit more where
	needed)

	* src/Makefile.am:
	* src/kdelibs/khtml/css/Makefile.am:
	* src/kdelibs/khtml/misc/Makefile.am:
	* src/kdelibs/kjs/Makefile.am:


git-svn-id: svn://svn.chromium.org/blink/trunk@546 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 05:28:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7327fced0e57b5bd0bf4a7b9776ffcb4d5c9a026');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fe01s2i24ozfd2', 1, e'	* src/kwq/Makefile.am: Fix another bonehead mistake.


git-svn-id: svn://svn.chromium.org/blink/trunk@545 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 04:04:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fc4c69bb349fced601b5d5817783dc091f6259f1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00ff01s2n7enairx', 1, e'	Fix bonehead mistakes in last checkin which were killing Jersey.

	* src/kdelibs/khtml/ecma/Makefile.am:
	* src/kdelibs/khtml/html/Makefile.am:
	* src/kdelibs/khtml/rendering/Makefile.am:
	* src/kwq/kde/Makefile.am:


git-svn-id: svn://svn.chromium.org/blink/trunk@544 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 03:30:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9c56695bdbee49ca6280e3c0db12ff28c3896d05');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fg01s2qd2r0mmq', 1, e'Top level:
	* configure.in: always substitute OBJCXXLD, for the benefit of
	WebCore speedups.

WebCore:
	Build speedups:

	* autogen.sh, configure.in: Don\'t use libtool any more. Set RANLIB
	to \'echo\' since ranlib is really slow and we don\'t really need to
	run it.

	* libtool.diff: Removed.


git-svn-id: svn://svn.chromium.org/blink/trunk@543 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 02:56:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e441b01e4d511747f16b2dab9bb091959f905ff6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fh01s2jc0pwnlb', 1, e'Top level:
	Build speedups:

	* autogen.sh, configure.in: Don\'t use libtool any more. Set RANLIB
	to \'echo\' since ranlib is really slow and we don\'t really need to
	run it.

	* libtool.diff: Removed.

WebCore:
	Build speedups: Don\'t use libtool, and don\'t link static libraries
	into each other.

	* src/Makefile.am
	* src/kdelibs/khtml/Makefile.am:
	* src/kdelibs/khtml/css/Makefile.am:
	* src/kdelibs/khtml/dom/Makefile.am:
	* src/kdelibs/khtml/ecma/Makefile.am:
	* src/kdelibs/khtml/html/Makefile.am:
	* src/kdelibs/khtml/java/Makefile.am:
	* src/kdelibs/khtml/misc/Makefile.am:
	* src/kdelibs/khtml/rendering/Makefile.am:
	* src/kdelibs/khtml/xml/Makefile.am:
	* src/kdelibs/kjs/Makefile.am:
	* src/kwq/Makefile.am:
	* src/kwq/kde/Makefile.am:
	* src/kwq/qt/Makefile.am:


git-svn-id: svn://svn.chromium.org/blink/trunk@542 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-01-18 01:47:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ca958c7997a5113bd034ae07b93456b6f4e7b133');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fi01s2t90dv7rd', 1, e'Adding npapi.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@541 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-18 00:55:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/408ac68ac9fd5edf8a164758040688dadc096765');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fj01s2jyx37q6x', 1, e'Removed npapi.c


git-svn-id: svn://svn.chromium.org/blink/trunk@540 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-18 00:51:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d615896888086b5aa77c8606056a192eaf4f807c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv68u00fk01s2f72nce99', 1, e'Added remaining mouse events to WKPluginView. Attributes (HTML tags) are now passed to plug-ins. Routed instance-specific plug-in to browser calls to WKPluginView


git-svn-id: svn://svn.chromium.org/blink/trunk@539 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-18 00:45:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1c28078f750a399d9fed793b20437e52b8cd0e0e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fl01s2xjdwyvxp', 1, e'Fixed debuggging test.


git-svn-id: svn://svn.chromium.org/blink/trunk@598 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-07 02:15:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5abcf6621b12c2c5e51f87ea625111261093c61');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fm01s26fgergnh', 1, e'Fixed allocation problems.


git-svn-id: svn://svn.chromium.org/blink/trunk@597 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-07 02:00:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a57493e7e788985a4cb02519d2b5de451b984955');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fn01s2zxc52gl9', 1, e'Fixed allocation problems.  Implemented parent->child management
    for datasource correctly.


git-svn-id: svn://svn.chromium.org/blink/trunk@596 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-07 02:00:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3a7cf956e112dea2aa796c64646e342395d7e3bd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fo01s24ym304su', 1, e'Updated to reflect new API.


git-svn-id: svn://svn.chromium.org/blink/trunk@595 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-06 04:53:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8bf50e83532460d83667491c1edb6012270d51fc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j701s2gj6t6dxt', 1, e'Included PARAM tags as arguments to WCJavaAppletWidget


git-svn-id: svn://svn.chromium.org/blink/trunk@715 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-07 23:31:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/73232c1293af50a086ca2926cbef8a669870e6cb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fp01s2uvxvcr5x', 1, e'WebKit:
	Remove old obsolete cache code from tree and build.

	* Cache.subproj/NSURICache.h:
	* Cache.subproj/NSURICache.m:
	* Cache.subproj/NSURICacheData.h:
	* Cache.subproj/NSURICacheData.m:
	* Cache.subproj/NSURILoad.h:
	* Cache.subproj/NSURILoad.m:
	* Cache.subproj/NSURILoadReallyPrivate.h:
	* Cache.subproj/_NSURICacheQueue.h:
	* Cache.subproj/_NSURICacheQueue.m:
	* Misc.subproj/WebKitReallyPrivate.h:
	* Misc.subproj/_NSMonitor.h:
	* Misc.subproj/_NSMonitor.m:
	* WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@594 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-06 03:11:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/392dfdef630844025ca34d7ea459cc27b0b28e8d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fq01s243pchskm', 1, e'Working dynamic scroll bars.


git-svn-id: svn://svn.chromium.org/blink/trunk@593 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-06 01:59:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3089422de6b12793d818456e1e264f3c5d63a76a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fr01s2rg2c2utj', 1, e'Reintegrated Ken\'s cache changes after stomping them out


git-svn-id: svn://svn.chromium.org/blink/trunk@592 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-05 20:47:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/89363747a1c932ebfa89ea8e9c468f0d7f0dff3e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fs01s2gsdnvh2i', 1, e'Added support for the object tag. Added getPluginForURL in WKPluginDatabase. Now grabbing remaining info from plug-in resources


git-svn-id: svn://svn.chromium.org/blink/trunk@591 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-05 19:15:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ab36688ed63ce946c0419214c102aed1a60698f3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800ft01s2yzpp7spn', 1, e'2002-02-05  Kenneth Kocienda  <kocienda@apple.com>

        I know WebViewTest is dead, but this was breaking the build...

        * Tests/khtmlview/_KWQOwner.h:
        * Tests/khtmlview/_KWQOwner.m: (-[_KWQOwner applicationDidFinishLaunching:]),
        (-[_KWQOwner _setURL:]), (-[_KWQOwner changeURL:]), (-[_KWQOwner back:]),
        (-[_KWQOwner forward:]), (-[_KWQOwner newUriDone:]):

        Changes to move these last bits of code to the new cache API.

        * src/kwq/KWQKjobclasses.mm:
        * src/kwq/WKPluginView.h:
        * src/kwq/WKPluginView.mm: (-[WKPluginView drawRect:]), (-[WKPluginView
        WCURLHandleResourceDidBeginLoading:userData:]), (-[WKPluginView
        WCURLHandleResourceDidCancelLoading:userData:]), (-[WKPluginView
        WCURLHandleResourceDidFinishLoading:userData:]), (-[WKPluginView
        WCURLHandle:resourceDataDidBecomeAvailable:userData:]), (-[WKPluginView
        WCURLHandle:resourceDidFailLoadingWithResult:userData:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@590 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-05 16:32:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9359ea5744699cb13c749e2a285cd2808192115b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fu01s21xazdwru', 1, e'Top level:
 	Fix everything for WebFoundation and WebKit WK --> IF rename.

 	* Tests/CookieManager/wkcookie-test.m:
WebBrowser:
	Fix everything for WK --> IF rename.

	* BackForwardListEntry.h:
	* BrowserDocument.h:
	* BrowserDocument.m: (-[BrowserDocument init]), (-[BrowserDocument
	setMainWebView:]), (-[BrowserDocument goToURLBypassingBackForwardList:]),
	(-[BrowserDocument receivedProgress:forResource:fromDataSource:]),
	(-[BrowserDocument receivedError:forResource:partialProgress:fromDataSource:]),
	(-[BrowserDocument setStatusText:forDataSource:]), (-[BrowserDocument
	statusTextForDataSource:]), (-[BrowserDocument authenticate:]),
	(-[BrowserDocument locationChangeStartedForDataSource:]), (-[BrowserDocument
	locationChangeInProgressForDataSource:]), (-[BrowserDocument
	locationChangeDone:forDataSource:]), (-[BrowserDocument
	receivedPageTitle:forDataSource:]), (-[BrowserDocument
	serverRedirectTo:forDataSource:]), (-[BrowserDocument
	createFrameNamed:for:inParent:]):
	* BrowserWindow.h:
	* WebController.h:
	* WebController.m: (-[WebController
	receivedProgress:forResource:fromDataSource:]), (-[WebController
	receivedError:forResource:partialProgress:fromDataSource:]), (-[WebController
	setStatusText:forDataSource:]), (-[WebController
	locationChangeStartedForDataSource:]), (-[WebController
	locationChangeInProgressForDataSource:]), (-[WebController
	locationChangeDone:forDataSource:]), (-[WebController
	receivedPageTitle:forDataSource:]), (-[WebController
	serverRedirectTo:forDataSource:]):
WebCore:
	Fix everything for WK --> IF rename.

	* src/kwq/KWQKHTMLPart.h:
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::khtmlMouseReleaseEvent),
	(KHTMLPart::requestFrame), (KHTMLPart::checkCompleted):
WebFoundation:
	Rename all classes from WK prefix to IF prefix.

	* CacheLoader.subproj/IFCachedObject.h:
	* CacheLoader.subproj/IFCachedObject.m:
	* CacheLoader.subproj/IFContentType.h:
	* CacheLoader.subproj/IFContentType.m:
	* CacheLoader.subproj/IFHTTPURLHandle.h:
	* CacheLoader.subproj/IFHTTPURLHandle.m: (+[IFHTTPURLHandle canInitWithURL:]),
	(-[IFHTTPURLHandle initWithURL:cached:]), (-[IFHTTPURLHandle
	initWithURL:flags:group:requestMethod:requestData:]):
	* CacheLoader.subproj/IFHTTPURLHandleCookies.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (readStreamCallback),
	(-[IFHTTPURLProtocolHandler initWithURLLoad:]), (-[IFHTTPURLProtocolHandler
	beginLoadInBackground]), (-[IFHTTPURLProtocolHandler endLoadInBackground]),
	(-[IFHTTPURLProtocolHandler handleReadStreamEvent:event:]),
	(-[IFHTTPURLProtocolHandler performHTTPHeaderRead:]), (-[IFHTTPURLProtocolHandler
	performStreamRead:]), (-[IFHTTPURLProtocolHandler determineError]):
	* CacheLoader.subproj/IFURLCache.h:
	* CacheLoader.subproj/IFURLCache.m: (-[IFURLCache objectForURL:]), (-[IFURLCache
	cacheObject:forURL:untilDate:]), (-[IFURLCache expiryForURL:]), (-[IFURLCache
	setExpiryForURL:date:]), (-[IFURLCache invalidateURL:]), (-[IFURLCache
	clearCache]), (-[IFURLCache truncateToSizeLimit:]):
	* CacheLoader.subproj/IFURLDataProvider.h:
	* CacheLoader.subproj/IFURLDiskCache.h:
	* CacheLoader.subproj/IFURLDiskCache.m:
	* CacheLoader.subproj/IFURLHandle.h:
	* CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandleSynchronousClient init]),
	(-[IFURLHandleSynchronousClient IFURLHandleResourceDidBeginLoading:]),
	(-[IFURLHandleSynchronousClient IFURLHandleResourceDidCancelLoading:]),
	(-[IFURLHandleSynchronousClient IFURLHandleResourceDidFinishLoading:]),
	(-[IFURLHandleSynchronousClient IFURLHandle:resourceDataDidBecomeAvailable:]),
	(-[IFURLHandleSynchronousClient IFURLHandle:resourceDidFailLoadingWithResult:]),
	(_sendLoadCancelledMessages), (_sendLoadDidBeginMessages),
	(_sendDidLoadDataMessages), (_sendLoadCompleteMessages),
	(_sendLoadFailedMessages), (_handleRetain), (_handleRelease),
	(_handleCopyDescription), (+[IFURLHandle initialize]), (+[IFURLHandle
	canInitWithURL:]), (-[IFURLHandle initWithURL:cached:]), (-[IFURLHandle
	addClient:]), (-[IFURLHandle removeClient:]), (-[IFURLHandle loadInBackground]),
	(-[IFURLHandle cancelLoadInBackground]), (-[IFURLHandle backgroundLoadDidBegin]),
	(-[IFURLHandle didLoadData:fromStream:]), (-[IFURLHandle
	backgroundLoadComplete]), (-[IFURLHandle backgroundLoadFailedWithResultCode:]),
	(-[IFURLHandle loadInForeground:]), (-[IFURLHandle statusCode]), (-[IFURLHandle
	resultCode]), (-[IFURLHandle isEqual:]), (-[IFURLHandle hash]), (-[IFURLHandle
	cacheable]), (-[IFURLHandle setCacheable:]), (-[IFURLHandle setStatusCode:]),
	(-[IFURLHandle setResultCode:]), (-[IFURLHandle
	notifyClientsBackgroundLoadCancelled]), (-[IFURLHandle
	notifyClientsBackgroundLoadDidBegin]), (-[IFURLHandle notifyClientsDidLoadData]),
	(-[IFURLHandle notifyClientsBackgroundLoadComplete]), (-[IFURLHandle
	notifyClientsBackgroundLoadFailed]):
	* CacheLoader.subproj/IFURLHandleCGlue.h:
	* CacheLoader.subproj/IFURLHandleCGlue.m: (-[IFURLHandleCGlueClient
	initWithClientContext:]), (-[IFURLHandleCGlueClient
	IFURLHandleResourceDidBeginLoading:]), (-[IFURLHandleCGlueClient
	IFURLHandleResourceDidCancelLoading:]), (-[IFURLHandleCGlueClient
	IFURLHandleResourceDidFinishLoading:]), (-[IFURLHandleCGlueClient
	IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFURLHandleCGlueClient
	IFURLHandle:resourceDidFailLoadingWithResult:]), (IFURLHandleCreate),
	(IFURLHandleRelease), (IFURLHandleLoadInBackground):
	* CacheLoader.subproj/IFURLLoad.m: (+[IFURLLoad initialize]), (+[IFURLLoad
	URLLoadWithURL:flags:]), (-[IFURLLoad initWithURL:flags:]), (-[IFURLLoad
	addHandle:]), (-[IFURLLoad removeHandle:]), (-[IFURLLoad schedule]), (-[IFURLLoad
	statusCode]), (-[IFURLLoad resultCode]), (-[IFURLLoad succeeded]), (-[IFURLLoad
	failedWithResultCode:]), (-[IFURLLoad protocolHandler]), (-[IFURLLoad
	beginOriginLoad]), (-[IFURLLoad didBeginLoading]), (-[IFURLLoad cleanup]),
	(-[IFURLLoad setStatusCode:]), (-[IFURLLoad setResultCode:]), (+[IFURLLoad
	IFURLLoadCacheCheckerRun:]), (+[IFURLLoad IFURLLoadThrottlerRun:]), (+[IFURLLoad
	IFURLLoadLoaderRun:]), (+[IFURLLoad IFURLLoadSweeperRun:]), (+[IFURLLoad
	IFURLLoadCFStreamHandlerRun:]):
	* CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager
	initWithDefaultStack]), (+[IFURLLoadManager sharedURLLoader]),
	(-[IFURLLoadManager concurrentNetworkLoadLimit]), (-[IFURLLoadManager
	setConcurrentNetworkLoadLimit:]), (-[IFURLLoadManager canAccessNetwork]),
	(-[IFURLLoadManager setCanAccessNetwork:]), (-[IFURLLoadManager
	networkLoadTimeout]), (-[IFURLLoadManager setNetworkLoadTimeout:]),
	(-[IFURLLoadManager requestWithURLHandle:]), (-[IFURLLoadManager
	cancelRequestWithURLHandle:]), (-[IFURLLoadManager cancelAllRequestsWithURL:]),
	(-[IFURLLoadManager handleURLLoadDone:]), (-[IFURLLoadManager
	handleURLLoadedResourceData:]):
	* CacheLoader.subproj/IFURLMemoryCache.m: (+[IFMemoryCacheObject
	memoryCacheObjectWithObject:]), (+[IFMemoryCacheObject
	memoryCacheObjectWithObject:expiry:]), (-[IFMemoryCacheObject initWithObject:]),
	(-[IFMemoryCacheObject touch]), (-[IFMemoryCacheObject isExpired]),
	(-[IFURLMemoryCache initWithSizeLimit:]), (-[IFURLMemoryCache
	truncateToSizeLimit]), (-[IFURLMemoryCache objectForURL:]), (-[IFURLMemoryCache
	cacheObject:forURL:untilDate:]), (-[IFURLMemoryCache invalidateURL:]):
	* CacheLoader.subproj/IFURLProtocolHandler.m: (+[IFURLProtocolHandler
	initialize]), (+[IFURLProtocolHandler canInitWithURL:]), (-[IFURLProtocolHandler
	initWithURLLoad:]), (-[IFURLProtocolHandler beginLoadInBackground]),
	(-[IFURLProtocolHandler endLoadInBackground]):
	* CacheLoader.subproj/WCURLHandleGlue.m: (-[WCURLHandleClientProxy
	IFURLHandleResourceDidBeginLoading:]), (-[WCURLHandleClientProxy
	IFURLHandleResourceDidCancelLoading:]), (-[WCURLHandleClientProxy
	IFURLHandleResourceDidFinishLoading:]), (-[WCURLHandleClientProxy
	IFURLHandle:resourceDataDidBecomeAvailable:]), (-[WCURLHandleClientProxy
	IFURLHandle:resourceDidFailLoadingWithResult:]), (WCURLHandleCreate):
	* CookieManager.subproj/IFCookie.m: (+[IFCookie cookieWithDictionary:]),
	(setVersion), (setName), (setValue), (setDefaultsFromOriginURL), (setDomain),
	(setPath), (setSecure), (setExpires), (-[IFCookie initWithDictionary:]),
	(-[IFCookie version]), (-[IFCookie name]), (-[IFCookie value]), (-[IFCookie
	expires]), (-[IFCookie sessionOnly]), (-[IFCookie domain]), (-[IFCookie path]),
	(-[IFCookie secure]), (-[IFCookie comment]), (-[IFCookie commentURL]),
	(-[IFCookie portList]), (+[IFCookie cookieWithV0Spec:forURL:]),
	(MakeCookieWithV0Spec), (-[IFCookie compare:]), (-[IFCookie description]):
	* CookieManager.subproj/IFCookieManager.m: (+[IFCookieManager
	sharedCookieManager]), (-[IFCookieManager cookies]), (-[IFCookieManager
	setCookie:]), (-[IFCookieManager deleteCookie:]), (-[IFCookieManager
	deleteCookieWithName:domain:path:]), (-[IFCookieManager
	cookieRequestHeadersForURL:]), (-[IFCookieManager
	setCookiesFromResponseHeaders:forURL:]), (-[IFCookieManager addAcceptHandler:]),
	(-[IFCookieManager removeAcceptHandler:]), (-[IFCookieManager
	addChangeListener:]), (-[IFCookieManager removeChangeListener:]),
	(-[IFCookieManager description]):
	* Misc.subproj/IFBinaryHeap.m: (_IFBinaryHeapRetain), (_IFBinaryHeapRelease),
	(_IFBinaryHeapCopyDescription), (_IFBinaryHeapCompare), (_heap), (+[IFBinaryHeap
	binaryHeap]), (+[IFBinaryHeap binaryHeapWithBinaryHeap:]), (-[IFBinaryHeap
	init]), (-[IFBinaryHeap initWithBinaryHeap:]):
	* Misc.subproj/IFMonitor.m: (-[IFMonitor description]):
	* Misc.subproj/IFMutableData.m: (-[IFMutableData getBytes:length:]),
	(-[IFMutableData getBytes:range:]), (-[IFMutableData subdataWithRange:]):
	* Misc.subproj/IFMutableDataPrivate.m: (IFDataCheckBound), (+[IFByteRange
	rangeWithRange:]), (-[IFByteRange isEqual:]), (+[IFByteBlock
	byteBlockWithBytes:length:]), (-[IFMutableData createBlockForRange:buffer:]),
	(-[IFMutableData dataObjectsGreaterThanMatchedOffset:]), (-[IFMutableData
	byteBlocksForRange:]), (-[IFMutableData bytesInRange:]), (-[IFMutableData
	appendBytes:length:]), (+[IFData dataWithByteBlock:]), (-[IFData
	initWithByteBlock:]), (-[IFData getBytes:range:]), (-[IFData subdataWithRange:]):
	* Misc.subproj/IFNSArrayExtensions.m:
	* Misc.subproj/IFNSObjectExtensions.m:
	* Misc.subproj/IFQueue.m: (+[IFQueue newNode]), (-[IFQueue init]), (-[IFQueue
	put:]), (-[IFQueue take]), (-[IFQueue peekAt:]), (-[IFQueue remove:]), (-[IFQueue
	clear]), (-[IFQueue indexOf:]):
	* Misc.subproj/IFReadWriteLock.m: (-[IFReadWriteLock init]):
WebKit:
	Rename all classes from WK prefix to IF prefix.

	* Cache.subproj/IFLoadChunk.h:
	* Cache.subproj/IFWebCache.h:
	* Cache.subproj/IFWebCacheClient.h:
	* Cache.subproj/IFWebContentType.h:
	* History.subproj/IFAttributedURL.h:
	* History.subproj/IFBackForwardList.h:
	* History.subproj/IFBackForwardList.m: (-[IFBackForwardList init]),
	(-[IFBackForwardList addEntry:]), (-[IFBackForwardList back]),
	(-[IFBackForwardList currentEntry]), (-[IFBackForwardList forward]),
	(-[IFBackForwardList description]):
	* History.subproj/IFURIEntry.h:
	* History.subproj/IFURIEntry.m: (WCCreateURIEntry), (-[IFURIEntry isEqual:]),
	(-[IFURIEntry description]):
	* History.subproj/IFURIList.h:
	* History.subproj/IFURIList.m: (newURIListNode), (freeNode), (-[IFURIList
	dealloc]), (-[IFURIList addEntry:]), (-[IFURIList removeURL:]), (-[IFURIList
	removeEntry:]), (-[IFURIList entryForURL:]), (-[IFURIList entryAtIndex:]),
	(-[IFURIList removeEntryAtIndex:]), (-[IFURIList removeEntriesToIndex:]):
	* Misc.subproj/IFException.h:
	* Misc.subproj/IFException.m:
	* WebKit.pbproj/project.pbxproj:
	* WebView.subproj/IFBaseWebController.h:
	* WebView.subproj/IFBaseWebController.mm: (+[IFObjectHolder holderWithObject:]),
	(-[IFBaseWebController init]), (-[IFBaseWebController initWithView:dataSource:]),
	(-[IFBaseWebController setDirectsAllLinksToSystemBrowser:]),
	(-[IFBaseWebController directsAllLinksToSystemBrowser]), (-[IFBaseWebController
	setView:andDataSource:]), (-[IFBaseWebController
	createFrameNamed:for:inParent:]), (-[IFBaseWebController viewForDataSource:]),
	(-[IFBaseWebController dataSourceForView:]), (-[IFBaseWebController mainView]),
	(-[IFBaseWebController mainDataSource]), (-[IFBaseWebController
	setStatusText:forDataSource:]), (-[IFBaseWebController
	statusTextForDataSource:]), (-[IFBaseWebController authenticate:]),
	(-[IFBaseWebController receivedProgress:forResource:fromDataSource:]),
	(-[IFBaseWebController
	receivedError:forResource:partialProgress:fromDataSource:]),
	(-[IFBaseWebController locationWillChangeTo:]), (-[IFBaseWebController
	locationChangeStartedForDataSource:]), (-[IFBaseWebController
	locationChangeInProgressForDataSource:]), (-[IFBaseWebController
	locationChangeDone:forDataSource:]), (-[IFBaseWebController
	receivedPageTitle:forDataSource:]), (-[IFBaseWebController
	serverRedirectTo:forDataSource:]):
	* WebView.subproj/IFBaseWebControllerPrivate.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@589 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-05 02:45:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/186e9f26d6c29f80f1a277f4c7299bff12749855');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fv01s2u1aa4jup', 1, e'Top level:
	Fix everything for WebFoundation and WebKit WK --> IF rename.

	* Tests/CookieManager/wkcookie-test.m:
	* Tests/CookieManager/wkcookiemanager-test.m:
	* Tests/khtmlview/_KWQOwner.h:
	* Tests/khtmlview/_KWQOwner.m:

WebFoundation:
	Rename all WK files to IF (classes not renamed yet).

	* CacheLoader.subproj/IFCachedObject.h:
	* CacheLoader.subproj/IFCachedObject.m:
	* CacheLoader.subproj/IFContentType.h:
	* CacheLoader.subproj/IFContentType.m:
	* CacheLoader.subproj/IFHTTPURLHandle.h:
	* CacheLoader.subproj/IFHTTPURLHandle.m:
	* CacheLoader.subproj/IFHTTPURLHandleCookies.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/IFURLCache.h:
	* CacheLoader.subproj/IFURLCache.m:
	* CacheLoader.subproj/IFURLDataProvider.h:
	* CacheLoader.subproj/IFURLDiskCache.h:
	* CacheLoader.subproj/IFURLDiskCache.m:
	* CacheLoader.subproj/IFURLHandle.h:
	* CacheLoader.subproj/IFURLHandle.m:
	* CacheLoader.subproj/IFURLHandleCGlue.h:
	* CacheLoader.subproj/IFURLHandleCGlue.m:
	* CacheLoader.subproj/IFURLHandleClient.h:
	* CacheLoader.subproj/IFURLLoad.h:
	* CacheLoader.subproj/IFURLLoad.m:
	* CacheLoader.subproj/IFURLLoadManager.h:
	* CacheLoader.subproj/IFURLLoadManager.m:
	* CacheLoader.subproj/IFURLMemoryCache.h:
	* CacheLoader.subproj/IFURLMemoryCache.m:
	* CacheLoader.subproj/IFURLProtocolHandler.h:
	* CacheLoader.subproj/IFURLProtocolHandler.m:
	* CacheLoader.subproj/WCURLHandleGlue.m:
	* CacheLoader.subproj/WKCachedObject.h:
	* CacheLoader.subproj/WKCachedObject.m:
	* CacheLoader.subproj/WKContentType.h:
	* CacheLoader.subproj/WKContentType.m:
	* CacheLoader.subproj/WKHTTPURLHandle.h:
	* CacheLoader.subproj/WKHTTPURLHandle.m:
	* CacheLoader.subproj/WKHTTPURLHandleCookies.h:
	* CacheLoader.subproj/WKHTTPURLProtocolHandler.h:
	* CacheLoader.subproj/WKHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/WKURLCache.h:
	* CacheLoader.subproj/WKURLCache.m:
	* CacheLoader.subproj/WKURLDataProvider.h:
	* CacheLoader.subproj/WKURLDiskCache.h:
	* CacheLoader.subproj/WKURLDiskCache.m:
	* CacheLoader.subproj/WKURLHandle.h:
	* CacheLoader.subproj/WKURLHandle.m:
	* CacheLoader.subproj/WKURLHandleCGlue.h:
	* CacheLoader.subproj/WKURLHandleCGlue.m:
	* CacheLoader.subproj/WKURLHandleClient.h:
	* CacheLoader.subproj/WKURLLoad.h:
	* CacheLoader.subproj/WKURLLoad.m:
	* CacheLoader.subproj/WKURLLoadManager.h:
	* CacheLoader.subproj/WKURLLoadManager.m:
	* CacheLoader.subproj/WKURLMemoryCache.h:
	* CacheLoader.subproj/WKURLMemoryCache.m:
	* CacheLoader.subproj/WKURLProtocolHandler.h:
	* CacheLoader.subproj/WKURLProtocolHandler.m:
	* CookieManager.subproj/IFCookie.h:
	* CookieManager.subproj/IFCookie.m:
	* CookieManager.subproj/IFCookieAcceptHandler.h:
	* CookieManager.subproj/IFCookieChangeListener.h:
	* CookieManager.subproj/IFCookieManager.h:
	* CookieManager.subproj/IFCookieManager.m:
	* CookieManager.subproj/IFCookieManagerPrivate.h:
	* CookieManager.subproj/IFCookiePrivate.h:
	* CookieManager.subproj/WKCookie.h:
	* CookieManager.subproj/WKCookie.m:
	* CookieManager.subproj/WKCookieAcceptHandler.h:
	* CookieManager.subproj/WKCookieChangeListener.h:
	* CookieManager.subproj/WKCookieManager.h:
	* CookieManager.subproj/WKCookieManager.m:
	* CookieManager.subproj/WKCookieManagerPrivate.h:
	* CookieManager.subproj/WKCookiePrivate.h:
	* Misc.subproj/IFBinaryHeap.h:
	* Misc.subproj/IFBinaryHeap.m:
	* Misc.subproj/IFMonitor.h:
	* Misc.subproj/IFMonitor.m:
	* Misc.subproj/IFMutableData.h:
	* Misc.subproj/IFMutableData.m:
	* Misc.subproj/IFMutableDataPrivate.h:
	* Misc.subproj/IFMutableDataPrivate.m:
	* Misc.subproj/IFOrderable.h:
	* Misc.subproj/IFQueue.h:
	* Misc.subproj/IFQueue.m:
	* Misc.subproj/IFReadWriteLock.h:
	* Misc.subproj/IFReadWriteLock.m:
	* Misc.subproj/WKBinaryHeap.h:
	* Misc.subproj/WKBinaryHeap.m:
	* Misc.subproj/WKMonitor.h:
	* Misc.subproj/WKMonitor.m:
	* Misc.subproj/WKMutableData.h:
	* Misc.subproj/WKMutableData.m:
	* Misc.subproj/WKMutableDataPrivate.h:
	* Misc.subproj/WKMutableDataPrivate.m:
	* Misc.subproj/WKOrderable.h:
	* Misc.subproj/WKQueue.h:
	* Misc.subproj/WKQueue.m:
	* Misc.subproj/WKReadWriteLock.h:
	* Misc.subproj/WKReadWriteLock.m:
	* WebFoundation.pbproj/project.pbxproj:
WebKit:
	Rename all WK files to IF (classes not renamed yet).

	* Cache.subproj/IFLoadChunk.h:
	* Cache.subproj/IFWebCache.h:
	* Cache.subproj/IFWebCacheClient.h:
	* Cache.subproj/IFWebContentType.h:
	* Cache.subproj/WKLoadChunk.h:
	* Cache.subproj/WKWebCache.h:
	* Cache.subproj/WKWebCacheClient.h:
	* Cache.subproj/WKWebContentType.h:
	* History.subproj/IFAttributedURL.h:
	* History.subproj/IFBackForwardList.h:
	* History.subproj/IFBackForwardList.m:
	* History.subproj/IFURIEntry.h:
	* History.subproj/IFURIEntry.m:
	* History.subproj/IFURIList.h:
	* History.subproj/IFURIList.m:
	* History.subproj/WKAttributedURL.h:
	* History.subproj/WKBackForwardList.h:
	* History.subproj/WKBackForwardList.m:
	* History.subproj/WKURIEntry.h:
	* History.subproj/WKURIEntry.m:
	* History.subproj/WKURIList.h:
	* History.subproj/WKURIList.m:
	* Misc.subproj/WKException.h:
	* Misc.subproj/WKException.m:
	* WebKit.pbproj/project.pbxproj:
	* WebView.subproj/IFBaseWebController.h:
	* WebView.subproj/IFBaseWebController.mm:
	* WebView.subproj/IFBaseWebControllerPrivate.h:
	* WebView.subproj/IFBaseWebControllerPrivate.mm:
	* WebView.subproj/IFDefaultWebController.h:
	* WebView.subproj/IFDefaultWebController.mm:
	* WebView.subproj/IFDefaultWebControllerPrivate.h:
	* WebView.subproj/IFDefaultWebControllerPrivate.mm:
	* WebView.subproj/IFDynamicScrollBarsView.m:
	* WebView.subproj/IFGrabBag.h:
	* WebView.subproj/IFPreferences.h:
	* WebView.subproj/IFWebController.h:
	* WebView.subproj/IFWebDataSource.h:
	* WebView.subproj/IFWebDataSource.mm:
	* WebView.subproj/IFWebDataSourcePrivate.h:
	* WebView.subproj/IFWebDataSourcePrivate.mm:
	* WebView.subproj/IFWebFrame.h:
	* WebView.subproj/IFWebFrame.m:
	* WebView.subproj/IFWebView.h:
	* WebView.subproj/IFWebView.mm:
	* WebView.subproj/IFWebViewPrivate.h:
	* WebView.subproj/IFWebViewPrivate.mm:
	* WebView.subproj/WKDefaultWebController.h:
	* WebView.subproj/WKDefaultWebController.mm:
	* WebView.subproj/WKDefaultWebControllerPrivate.h:
	* WebView.subproj/WKDefaultWebControllerPrivate.mm:
	* WebView.subproj/WKDynamicScrollBarsView.h:
	* WebView.subproj/WKDynamicScrollBarsView.m:
	* WebView.subproj/WKGrabBag.h:
	* WebView.subproj/WKPreferences.h:
	* WebView.subproj/WKWebController.h:
	* WebView.subproj/WKWebDataSource.h:
	* WebView.subproj/WKWebDataSource.mm:
	* WebView.subproj/WKWebDataSourcePrivate.h:
	* WebView.subproj/WKWebDataSourcePrivate.mm:
	* WebView.subproj/WKWebFrame.h:
	* WebView.subproj/WKWebFrame.m:
	* WebView.subproj/WKWebView.h:
	* WebView.subproj/WKWebView.mm:
	* WebView.subproj/WKWebViewPrivate.h:
	* WebView.subproj/WKWebViewPrivate.mm:
WebBrowser:
	Fix everything for WebFoundation and WebKit WK --> IF rename.

	* BackForwardListEntry.h:
	* BrowserDocument.h:
	* BrowserDocument.m:
	* BrowserWindow.h:
	* WebController.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@588 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-05 00:02:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7cee279e763f44c7ee23632739e9fcadccb882ed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fw01s2fcrkt0pf', 1, e'2002-02-04  Kenneth Kocienda  <kocienda@apple.com>

        Rearranged and cleaned up some cache API.

        * CacheLoader.subproj/WKURLCache.h:
        * CacheLoader.subproj/WKURLCache.m: (-[WKURLCache sizeLimit]), (-[WKURLCache
        setSizeLimit:]), (-[WKURLCache objectSizeLimit]), (-[WKURLCache
        setObjectSizeLimit:]), (-[WKURLCache currentUsage]), (-[WKURLCache
        truncateToSizeLimit:]), (-[WKURLCache initWithSizeLimit:]):
        * CacheLoader.subproj/WKURLDiskCache.h:
        * CacheLoader.subproj/WKURLDiskCache.m: (-[WKURLDiskCache initWithSizeLimit:]),
        (-[WKURLDiskCache initWithSizeLimit:location:]):
        * CacheLoader.subproj/WKURLMemoryCache.h:
        * CacheLoader.subproj/WKURLMemoryCache.m: (-[WKMemoryCacheObject size]),
        (-[WKURLMemoryCache initWithSizeLimit:]), (-[WKURLMemoryCache
        truncateToSizeLimit]), (-[WKURLMemoryCache cacheObject:forURL:untilDate:]),
        (-[WKURLMemoryCache clearCache]), (-[WKURLMemoryCache setSizeLimit:]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@587 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-04 19:01:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f2d87b8bd585f58f4f038e8881a869b9b4d236c5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g501s2vlboqg99', 1, e'	* History.subproj/WKURIList.m: (newURIListNode):
	retain entries before adding them to list. The node-freeing
	routine was releasing, but the node-adding routine wasn\'t
	retaining. Bad asymmetry, made up for by WebViewTest not
	autoreleasing. I fixed that too.

	* Tests/khtmlview/_KWQOwner.m: (-[_KWQOwner newUriDone:]):
	autorelease new WKURIEntry before handing it to
	WKBackForwardList.

    Implemented simple back/forward, using the existing back/forward code that
    WebViewTest was using (after fixing an object lifetime bug there). Also
    cleaned up viewSource stuff a little.

	* BrowserDocument.h:
	Added declarations for canGoBack, canGoForward, goBack, goForward; changed
	webController to _webController; added _backForwardList.

	* BrowserDocument.m:
	(-[BrowserDocument currentURL]),
	(-[BrowserDocument setCurrentURL:]),
	(-[BrowserDocument setMainWebView:]),
	(-[BrowserDocument setUpSearchChannels]),
	(-[BrowserDocument searchChannels]):
	Just updated for instance variable name changes and/or moved around.

	(-[BrowserDocument init]): Make a back/forward list
	(-[BrowserDocument dealloc]): Nuke a back/forward list

	(-[BrowserDocument goToURLBypassingBackForwardList:]): New method, contains
	the code that used to be goToURL

	(-[BrowserDocument goToURL:]): Now calls goToURLBypassingBackForwardList and
	then adds an entry to the back/forward list.

	(-[BrowserDocument canGoBack]),
	(-[BrowserDocument canGoForward]),
	(-[BrowserDocument goBack]),
	(-[BrowserDocument goForward]): New methods, implement back/forward list by
	calling methods on WKBackForwardList

	(-[BrowserDocument openNewTextEditDocumentWithString:]): New helper method, contains
	former guts of viewSource and viewReconstructedSource.
	(-[BrowserDocument viewSource:]),
	(-[BrowserDocument viewReconstructedSource:]): Call openNewTextEditDocumentWithString.

	* BrowserWindow.h: Added declaration for viewReconstructedSource

	* BrowserWindow.m:
	(-[BrowserWindow goBack:]),
	(-[BrowserWindow goForward:]): Call BrowserDocument methods.

	(-[BrowserWindow isShowingSearchResults:]): Fixed bug where it would return YES
	if there was no URL at all displayed.

	(-[BrowserWindow validateToolbarItem:]): Call [[self document] canGoBack] instead
	of [self canGoBack], same for forward.

	(-[BrowserWindow validateMenuItem:]): add test for viewReconstructedSource. Make
	both viewSource and viewReconstructedSource enabled only if currentURL is not nil.

	(-[BrowserWindow viewReconstructedSource:]): removed casts made unnecessary by adding
	the declaration to the header file.


git-svn-id: svn://svn.chromium.org/blink/trunk@578 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-01 02:02:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/089c3e4b386f376ced6ce10c0267142ec25ef55b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fx01s2rr3sf36v', 1, e'2002-02-01  Kenneth Kocienda  <kocienda@apple.com>

        More cleanups to the no-copy NSData API.
        This time the callback from the cache/loader has been
        simplified from:
        - (void)WKURLHandle:(WKURLHandle *)sender resourceDataDidBecomeAvailable:(UInt8 *)bytes offset:(unsigned)offset length:(unsigned)length;
        to:
        - (void)WKURLHandle:(WKURLHandle *)sender resourceDataDidBecomeAvailable:(NSData *)data;
        This was made possible by some rearrangement in the private API.
	Changed name of WKByteBlockData to WKData.

        * include/WCURLHandle.h:
        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:userData:]):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:userData:]):
        * CacheLoader.subproj/WCURLHandleGlue.m: (-[WCURLHandleClientProxy
        WKURLHandle:resourceDataDidBecomeAvailable:]):
        * CacheLoader.subproj/WKURLHandle.m: (-[WKURLHandleSynchronousClient
        WKURLHandle:resourceDataDidBecomeAvailable:]), (-[WKURLHandle
        notifyClientsDidLoadData]):
        * CacheLoader.subproj/WKURLHandleCGlue.h:
        * CacheLoader.subproj/WKURLHandleCGlue.m: (-[WKURLHandleCGlueClient
        WKURLHandle:resourceDataDidBecomeAvailable:]):
        * CacheLoader.subproj/WKURLHandleClient.h:
        * Misc.subproj/WKMutableDataPrivate.h:
        * Misc.subproj/WKMutableDataPrivate.m: (-[WKMutableData
        dataObjectsGreaterThanMatchedOffset:]), (+[WKData dataWithByteBlock:]), (-[WKData
        subdataWithRange:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@586 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-02 05:06:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0b43c50815cfac66a2f380b250e7a7f710057aef');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fy01s24gxi7scs', 1, e'Enabled plug-in detection for Javascript. Apple.com now works as it should. Also fixed plug-in deallocation


git-svn-id: svn://svn.chromium.org/blink/trunk@585 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-02 01:58:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2ac888e86c84f066920c839370385ffc9526fb2c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800fz01s2v6nqml8d', 1, e'Implemenation of locationChangeDone:forDataSource;


git-svn-id: svn://svn.chromium.org/blink/trunk@584 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-02 01:36:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/54052a4719ba7d1a451c1eb93b8825502030fa3e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g001s2hd6b1kjr', 1, e'Changes for dynamic scrolling views (not complete).
Added simple support for WKLocationChangeHandler so Alexander will diplsay
page when load is done.


git-svn-id: svn://svn.chromium.org/blink/trunk@583 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-02 01:28:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bb568ee0bffa0d91e87547681204bde1ad594809');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g101s22hlqzo6o', 1, e'Added files from WebBrowser`


git-svn-id: svn://svn.chromium.org/blink/trunk@582 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-01 21:56:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5e6ab968298e4c9dc02f79ece41ad7536cfc9b89');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g201s2xtm96wjl', 1, e'	Added call to examine the entry at the current index in
	the back/forward list without modifying the list. I needed
	this to save context data (in my case, scroll position)
	on the currently-viewed entry.

	* History.subproj/WKBackForwardList.h:
	* History.subproj/WKBackForwardList.m:
	(-[WKBackForwardList currentEntry]):
	Just returns the entry at the current index.

	Added useful mechanism and hideous hack for using remembered scroll positions
	with the back/forward list. There\'s no way to do this cleanly at this level;
	we have to get WebKit involved. Most of this code is fine though, only the
	restoring part should have to be redone.

	* BackForwardListEntry.h:
	* BackForwardListEntry.m: (+[BackForwardListEntry entryWithURL:]),
	(-[BackForwardListEntry scrollPoint]), (-[BackForwardListEntry setScrollPoint:]):
	New subclass of WKURIEntry; remembers a scroll point with each entry, and adds
	a convenience constructor. Some or all of this may move into WebKit later.

	* BrowserDocument.m:
	(-[BrowserDocument saveScrollPosition]):
	New method, reads the current scroll position from the view and stores it
	into the current back/forward list entry.

	(-[BrowserDocument restoreScrollPosition]):
	New method, reads the previously-saved scroll position from the current
	back/forward list entry and scrolls the view to match.

	(-[BrowserDocument restoreScrollPositionFromTimerHack:]),
	(-[BrowserDocument restoreScrollPositionLaterHack]):
	Timer-based hackery to wait a little while before calling restoreScrollPosition
	since calling it before the new page has loaded has no effect. This will have
	to be replaced with a WebKit-based mechanism for telling the webView what the
	incoming page\'s initial scroll point should be.

	(-[BrowserDocument goToURLBypassingBackForwardList:]),
	(-[BrowserDocument goToURL:]),
	(-[BrowserDocument goBack]),
	(-[BrowserDocument goForward]):
	Call the save/restore methods at the right places.

	* WebBrowser.pbproj/project.pbxproj: Updated for new files


git-svn-id: svn://svn.chromium.org/blink/trunk@581 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-01 19:02:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2486c55d05acc37783fd8ba27ef5207068abcd8d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g301s2ommi9c0w', 1, e'2002-02-01  Kenneth Kocienda  <kocienda@apple.com>

        At Richard\'s urging, I made some changes to the API of WKMutableData. I cleaned
        up the API, and hid the extra no-copy functionality so that it is not visible
        outside of this framework. Everything should be functionally equivalent with
        these changes.

        * CacheLoader.subproj/WKURLHandle.m: (-[WKURLHandle notifyClientsDidLoadData]):
        * Misc.subproj/WKMutableDataPrivate.h:
        * Misc.subproj/WKMutableDataPrivate.m: (WKDataCheckBound), (-[WKMutableData
        dataObjectsGreaterThanMatchedOffset:]), (+[WKByteBlockData dataWithByteBlock:]),
        (-[WKByteBlockData initWithByteBlock:]), (-[WKByteBlockData length]),
        (-[WKByteBlockData getBytes:]), (-[WKByteBlockData getBytes:length:]),
        (-[WKByteBlockData getBytes:range:]), (-[WKByteBlockData subdataWithRange:]),
        (-[WKByteBlockData copyWithZone:]), (-[WKByteBlockData dealloc]):


        Made some cleanups to the no-copy NSData API, and those changes
        make the use of the no-copy functionality in this client code
        much cleaner.

        * include/WCURLHandle.h:
        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:offset:length:userData:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@580 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-01 17:14:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cc0223e0dd4710f076b6c761c780830e2a19b910');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g401s2so1i3wr7', 1, e'Added QString constructor, fixed javascript at head of document bug.


git-svn-id: svn://svn.chromium.org/blink/trunk@579 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-01 03:12:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/da6e4bd3445730d01305c62980f4aaf9bc3fddeb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g601s2d3zvs2td', 1, e'Fixed javascript at head of document problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@577 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-01 01:40:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e09fc3be4baf462c4447f7db1963de03da5ee6c3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g701s292a4l8wm', 1, e'	* WebKit.pbproj: Removed -O0, so it will now get all the same
	warnings as pbxbuild gets.


git-svn-id: svn://svn.chromium.org/blink/trunk@576 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-01 00:37:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/15a7ea81c16d2e1982890dabc8f69b679e7860e3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ic01s281es0o8g', 1, e'- Treating Java.plugin like a CFM plug-in until it exports the correct mach-o symbols
- Enabled AppleScript in Alexander
- Fixed a partial URL problem with WCJavaAppletWidget

Modified Files:
    WebBrowser/WebBrowser.pbproj/project.pbxproj
    WebCore/src/kdelibs/khtml/rendering/render_applet.cpp
    WebCore/src/kwq/WCJavaAppletWidget.mm
    WebCore/src/kwq/WCPlugin.h WebCore/src/kwq/WCPlugin.mm
    WebCore/src/kwq/npapi.h


git-svn-id: svn://svn.chromium.org/blink/trunk@684 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-04 17:58:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6f6266e4d3ff7e5f9853482def7389767a70ce6f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g801s2myqg2n4m', 1, e'2002-01-31  Kenneth Kocienda  <kocienda@apple.com>

        Removed dependency on WC versions of these files

        * History.subproj/WKBackForwardList.h:
        * History.subproj/WKBackForwardList.m:
        * History.subproj/WKURIEntry.h:
        * History.subproj/WKURIEntry.m:
        * WebKit.pbproj/project.pbxproj:


        A set of in-progress changes. The new code here is not in a current code path,
        but I\'m checking in to make sure that some changes I made in WebKit work
        with something I was able to test.

        * CacheLoader.subproj/WKURLHandle.m: (-[WKURLHandle notifyClientsDidLoadData]):
        * Misc.subproj/WKMutableData.h:
        * Misc.subproj/WKMutableData.m: (-[WKMutableData copyWithZone:]),
        (-[WKMutableData initWithBytes:length:copy:freeWhenDone:bytesAreVM:]):
        * WebFoundation.pbproj/project.pbxproj:

        Removed dependency on WC classes backed by WebKit classes.

        * Tests/khtmlview/_KWQOwner.h:
        * Tests/khtmlview/_KWQOwner.m: (-[_KWQOwner changeURL:]), (-[_KWQOwner back:]),
        (-[_KWQOwner forward:]), (-[_KWQOwner newUriDone:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@575 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-01 00:28:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3b6d337250af5598ef0ac055cbddba0557ae44e9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800g901s2186d5ybo', 1, e'	* WebKit.pbproj:
	Marked WKURIList.h as a public header


git-svn-id: svn://svn.chromium.org/blink/trunk@574 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-01 00:13:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/718ad0620030320b15fbfc89502a3b041ddfff50');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800ga01s2vwedolu6', 1, e'Added document source.


git-svn-id: svn://svn.chromium.org/blink/trunk@573 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-01 00:11:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6822b8c2a170f0943d64124e196f43371a858945');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800gb01s26snvtf0n', 1, e'Added document source .


git-svn-id: svn://svn.chromium.org/blink/trunk@572 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-01 00:11:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bcd0e368d91713826c0def06b1655192089e3c04');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800gc01s2t4d5zl32', 1, e'Added support for hidden plug-ins. Added focus events


git-svn-id: svn://svn.chromium.org/blink/trunk@571 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-01-31 23:23:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b524b6434c3f41fdd2d8f11d6ae8110b00ed7ef0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800gd01s24homwzug', 1, e'2002-01-31  Kenneth Kocienda  <kocienda@apple.com>

        Created a no-copy version of NSData (WKMutableData) that will minimize the amount of data copying.
        Removed obsoleted WKURLData class
        Incorporated use of the no-copy NSData object.

        * CacheLoader.subproj/WKHTTPURLProtocolHandler.m: (-[WKHTTPURLProtocolHandler
        performStreamRead:]):
        * CacheLoader.subproj/WKURLData.h:
        * CacheLoader.subproj/WKURLData.m:
        * CacheLoader.subproj/WKURLHandle.h:
        * Misc.subproj/WKMutableData.h:
        * Misc.subproj/WKMutableData.m: (+[WKByteBlock byteBlockWithBytes:length:]),
        (-[WKByteBlock initWithBytes:length:]), (-[WKByteBlock bytes]), (-[WKByteBlock
        length]), (-[WKByteBlock byteLength]), (-[WKByteBlock dealloc]), (+[WKByteRange
        rangeWithRange:]), (-[WKByteRange initWithRange:]), (-[WKByteRange range]),
        (-[WKByteRange isEqual:]), (-[WKByteRange hash]), (-[WKByteRange copyWithZone:]),
        (-[WKMutableData createBlockForRange:buffer:]), (-[WKMutableData length]),
        (-[WKMutableData bytes]), (-[WKMutableData byteBlocksForRange:]),
        (-[WKMutableData bytesInRange:]), (-[WKMutableData getBytes:]), (-[WKMutableData
        getBytes:length:]), (-[WKMutableData getBytes:range:]), (-[WKMutableData
        subdataWithRange:]), (-[WKMutableData
        initWithBytes:length:copy:freeWhenDone:bytesAreVM:]), (-[WKMutableData
        appendBytes:length:]), (-[WKMutableData dealloc]):
        * WebFoundation.pbproj/project.pbxproj:

        Changes to incorporate use of the no-copy NSData object.

        * include/WCURLHandle.h:
        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:offset:length:userData:]):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        WCURLHandle:resourceDataDidBecomeAvailable:offset:length:userData:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@570 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-01-31 21:28:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f761f86a2922c0d6371c74847ddc7a9708c8a292');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv7q800ge01s2b1w3lahh', 1, e'Trivial debugging changes.


git-svn-id: svn://svn.chromium.org/blink/trunk@569 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-01-31 01:41:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ab3d4ba9cdea293820889e6d3ea88d8d1e6bd81a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gf01s2tu3892jn', 1, e'        Fixed problem with default text not showing up in text area.
        Fixed problem with scroll widgets not showing up in select list.


git-svn-id: svn://svn.chromium.org/blink/trunk@630 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-16 21:44:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/794dee40e7bcdf9b4cffcc9e6a454fddaf810e37');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gg01s2t6t6qpkp', 1, e'Comments added as reminders to fix frame<->datasource ownership.


git-svn-id: svn://svn.chromium.org/blink/trunk@629 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-16 19:58:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/736a66689fee3f6c92a52dfe4fd6a6df2e395004');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gh01s2c2ijk8vb', 1, e'Lots of changes for forms.


git-svn-id: svn://svn.chromium.org/blink/trunk@627 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-16 04:06:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/775652f7aecf0f0817dbe079d847486982d7dda1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gi01s2zlvz09xm', 1, e'2002-02-15  Kenneth Kocienda  <kocienda@apple.com>

	Lots of interface cleanups in preparation of the WebFoundation-0.1 release.

	Radar 2859843 (IFURLLoad must present a better interface to protocol handlers)
	Radar 2862349 (Move ivars in public headers inside a private class in the .m file)
	Radar 2861762 (IFURLDataProvider is obsolete)
	Radar 2861762 (IFURLDataProvider is obsolete)
	Radar 2861787 (Add charset ivar to IFURLHandle)

	* CacheLoader.subproj/IFHTTPURLHandle.h:
	* CacheLoader.subproj/IFHTTPURLHandle.m: (-[IFHTTPURLHandleInstanceVariables
	init]), (-[IFHTTPURLHandleInstanceVariables dealloc]), (-[IFHTTPURLHandle
	requestMethod]), (-[IFHTTPURLHandle requestHeaders]), (-[IFHTTPURLHandle
	requestData]), (-[IFHTTPURLHandle responseHeaders]), (-[IFHTTPURLHandle
	contentLength]), (-[IFHTTPURLHandle copyWithZone:]), (-[IFHTTPURLHandle
	dealloc]), (-[IFHTTPURLHandle setResponseHeaders:]), (-[IFHTTPURLHandle
	hasResponseHeaders]):
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/IFURLCache.h:
	* CacheLoader.subproj/IFURLCache.m: (-[IFURLCacheInstanceVariables init]),
	(-[IFURLCacheInstanceVariables dealloc]), (-[IFURLCache sizeLimit]),
	(-[IFURLCache setSizeLimit:]), (-[IFURLCache objectSizeLimit]), (-[IFURLCache
	setObjectSizeLimit:]), (-[IFURLCache currentUsage]), (-[IFURLCache
	initWithSizeLimit:]), (-[IFURLCache dealloc]), (-[IFURLCache
	truncateToSizeLimit:]), (-[IFURLCache setCurrentUsage:]):
	* CacheLoader.subproj/IFURLCachePrivate.h:
	* CacheLoader.subproj/IFURLCachePrivate.m:
	* CacheLoader.subproj/IFURLDataProvider.h:
	* CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache clearCache]):
	* CacheLoader.subproj/IFURLHandle.h:
	* CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandleInstanceVariables
	initWithHandle:]), (-[IFURLHandleInstanceVariables dealloc]), (-[IFURLHandle
	loadInBackground]), (-[IFURLHandle cancelLoadInBackground]), (-[IFURLHandle
	loadInForeground:]), (-[IFURLHandle addClient:]), (-[IFURLHandle removeClient:]),
	(-[IFURLHandle url]), (-[IFURLHandle canonicalURL]), (-[IFURLHandle finalURL]),
	(-[IFURLHandle flags]), (-[IFURLHandle attributes]), (-[IFURLHandle statusCode]),
	(-[IFURLHandle resultCode]), (-[IFURLHandle contentType]), (-[IFURLHandle
	characterSet]), (-[IFURLHandle availableResourceData]), (-[IFURLHandle
	contentLengthReceived]), (-[IFURLHandle isEqual:]), (-[IFURLHandle hash]),
	(-[IFURLHandle description]), (+[IFURLHandle initialize]), (+[IFURLHandle
	registerURLHandleClass:]), (+[IFURLHandle URLHandleClassForURL:]), (+[IFURLHandle
	canInitWithURL:]), (-[IFURLHandle initWithURL:]), (-[IFURLHandle
	initWithURL:cached:]), (-[IFURLHandle dealloc]), (-[IFURLHandle
	setAttribute:forKey:]), (-[IFURLHandle backgroundLoadDidBegin]), (-[IFURLHandle
	didLoadData:]), (-[IFURLHandle backgroundLoadComplete]), (-[IFURLHandle
	backgroundLoadFailedWithResultCode:]), (-[IFURLHandle cacheable]), (-[IFURLHandle
	setCacheable:]), (-[IFURLHandle setStatusCode:]), (-[IFURLHandle
	setResultCode:]), (-[IFURLHandle setFinalURL:]), (-[IFURLHandle
	notifyClientsBackgroundLoadCancelled]), (-[IFURLHandle
	notifyClientsBackgroundLoadDidBegin]), (-[IFURLHandle notifyClientsDidLoadData]),
	(-[IFURLHandle notifyClientsBackgroundLoadComplete]), (-[IFURLHandle
	notifyClientsBackgroundLoadFailed]):
	* CacheLoader.subproj/IFURLHandleC.m:
	* CacheLoader.subproj/IFURLHandlePrivate.h:
	* CacheLoader.subproj/IFURLLoad.m: (+[IFURLLoad IFURLLoadCacheCheckerRun:]):
	* CacheLoader.subproj/IFURLLoadManager.h:
	* CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManagerInstanceVariables
	init]), (-[IFURLLoadManagerInstanceVariables dealloc]), (-[IFURLLoadManager
	initWithDefaultStack]), (+[IFURLLoadManager sharedManager]), (-[IFURLLoadManager
	objectForURL:]), (-[IFURLLoadManager setObject:forURL:attributes:expiry:]),
	(-[IFURLLoadManager clearAllCaches]), (-[IFURLLoadManager handleURLLoadDone:]),
	(-[IFURLLoadManager handleURLLoadedResourceData:]), (-[IFURLLoadManager
	dealloc]), (-[IFURLLoadManager requestWithURLHandle:]), (-[IFURLLoadManager
	cancelRequestWithURLHandle:]), (-[IFURLLoadManager cancelAllRequestsWithURL:]),
	(-[IFURLLoadManager cancelAllRequestsInGroup:]), (-[IFURLLoadManager caches]):
	* CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache
	truncateToSizeLimit]), (-[IFURLMemoryCache clearCache]):
	* Database.subproj/IFDatabase.m: (-[IFDatabase removeAllObjects]):
	* Database.subproj/IFNDBMDatabase.m: (-[IFNDBMDatabase removeAllObjects]):
	* Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase removeAllObjects]):
	* Misc.subproj/WebFoundation.h:
	* WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@625 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-16 00:46:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a7dd5c997841efbca2a1f0b4d788083c2e2d9c26');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gj01s2w0co00x0', 1, e'Flash seems to require a plug-in instance struct to be created. Otherwise, crash


git-svn-id: svn://svn.chromium.org/blink/trunk@624 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-15 18:57:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cc41b4ca6d8a27078af262ba3c583d6b3e649ecc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hm01s212yb5du6', 1, e'Top level:
	* Tests/harness.c: (main): Set DYLD_IMAGE_SUFFIX to "_debug" so our
	automated tests all run with assertions enabled.

	* Tests/libiftest/IFCheckLeaks.c: (IFCheckLeaksAtExitHandler): but
	turn if off before launching `leaks\', since it makes `leaks\' fail
	in spectacular ways.
WebCore:
	* src/kwq/KWQString.mm: (QString::fromCFString): Don\'t pass a
	length to CFStringCreateMutableCopy, since that makes the string
	fixed-length, which makes assertions fail when in debugging mode.


git-svn-id: svn://svn.chromium.org/blink/trunk@649 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-21 23:03:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e6df6d5e44868133bdd077b8a7dcbb7209109e45');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gk01s2oyr4rd3o', 1, e'2002-02-14  Kenneth Kocienda  <kocienda@apple.com>

        Did a lot of API cleanup and code formatting.

        Worked on the following bugs, with these results:

        Fixed bugs:
        Radar 2859564 (Clean up untilDate:/expiry: API on IFURLCache)
        Radar 2859575 (truncateToSizeLimit does not belong in public interface for IFURLCache)
        Radar 2859632 (Remove set methods from IFHTTPURLHandle)
        Radar 2859834 (Implement IFHTTPURLHandle delegate method callbacks)
        Radar 2861054 (Clean up constants)

        Progress on bugs:
        Radar 2860531 (Implement special dictionary for IFURLLoadManager)
        Radar 2861001 (Update names of internal class categories)
        Radar 2860482 (Make sure all flags variables are unsigned)
        Radar 2860128 (Add canonicalized URLs to IFURLHandle; make sure they\'re used appropriately)
        Radar 2859577 (Decide on external visibility of WebFoundation headers)

        * CacheLoader.subproj/IFFileURLHandle.h:
        * CacheLoader.subproj/IFFileURLHandle.m:
        * CacheLoader.subproj/IFFileURLProtocolHandler.h:
        * CacheLoader.subproj/IFFileURLProtocolHandler.m: (+[IFFileURLProtocolHandler
        canonicalizeURL:]), (-[IFFileURLProtocolHandler fileLoadThread]):
        * CacheLoader.subproj/IFHTTPURLHandle.h:
        * CacheLoader.subproj/IFHTTPURLHandle.m: (-[IFHTTPURLHandle copyWithZone:]),
        (-[IFHTTPURLHandle dealloc]):
        * CacheLoader.subproj/IFHTTPURLHandleC.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (+[IFHTTPURLProtocolHandler
        canonicalizeURL:]), (-[IFHTTPURLProtocolHandler initWithURLLoad:]),
        (-[IFHTTPURLProtocolHandler beginLoadInBackground]), (-[IFHTTPURLProtocolHandler
        endLoadInBackground]), (-[IFHTTPURLProtocolHandler dealloc]),
        (-[IFHTTPURLProtocolHandler setResponseHeaders:]), (-[IFHTTPURLProtocolHandler
        performStreamRead:]):
        * CacheLoader.subproj/IFURLCache.h:
        * CacheLoader.subproj/IFURLCache.m: (-[IFURLCache objectForURL:]):
        * CacheLoader.subproj/IFURLCacheLoaderConstants.h:
        * CacheLoader.subproj/IFURLCacheLoaderConstants.m:
        * CacheLoader.subproj/IFURLCacheObject.h:
        * CacheLoader.subproj/IFURLCachePrivate.h:
        * CacheLoader.subproj/IFURLCachePrivate.m:
        * CacheLoader.subproj/IFURLDataProvider.h:
        * CacheLoader.subproj/IFURLDiskCache.h:
        * CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache objectForURL:]):
        * CacheLoader.subproj/IFURLHandle.h:
        * CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandle loadInBackground]),
        (-[IFURLHandle cancelLoadInBackground]), (-[IFURLHandle loadInForeground]),
        (-[IFURLHandle loadInForeground:]), (-[IFURLHandle isEqual:]), (-[IFURLHandle
        hash]), (-[IFURLHandle description]), (-[IFURLHandle copyWithZone:]):
        * CacheLoader.subproj/IFURLHandleC.h:
        * CacheLoader.subproj/IFURLHandleCallBackClient.h:
        * CacheLoader.subproj/IFURLHandleClient.h:
        * CacheLoader.subproj/IFURLHandleConstants.h:
        * CacheLoader.subproj/IFURLHandlePrivate.h:
        * CacheLoader.subproj/IFURLHandlePrivate.m: (-[IFURLHandle
        setAttribute:forKey:]):
        * CacheLoader.subproj/IFURLLoad.h:
        * CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad statusCode]), (-[IFURLLoad
        resultCode]), (-[IFURLLoad url]), (-[IFURLLoad attributes]), (-[IFURLLoad
        flags]), (-[IFURLLoad handles]), (-[IFURLLoad resourceData]), (-[IFURLLoad
        didLoadBytes:length:]), (-[IFURLLoad updateHandles]), (-[IFURLLoad succeeded]),
        (-[IFURLLoad failedWithResultCode:]), (-[IFURLLoad isEqual:]), (-[IFURLLoad
        hash]), (-[IFURLLoad description]), (-[IFURLLoad dealloc]), (+[IFURLLoad
        URLLoadWithURL:attributes:flags:]), (-[IFURLLoad initWithURL:attributes:flags:]),
        (-[IFURLLoad addHandle:]), (-[IFURLLoad beginOriginLoad]), (-[IFURLLoad
        didBeginLoading]), (-[IFURLLoad setResourceData:]), (+[IFURLLoad
        IFURLLoadCacheCheckerRun:]):
        * CacheLoader.subproj/IFURLLoadManager.h:
        * CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager
        initWithDefaultStack]), (+[IFURLLoadManager sharedURLLoadManager]),
        (-[IFURLLoadManager requestWithURLHandle:]), (-[IFURLLoadManager
        cancelRequestWithURLHandle:]), (-[IFURLLoadManager cancelAllRequestsWithURL:]),
        (-[IFURLLoadManager cancelAllRequestsInGroup:]), (-[IFURLLoadManager
        handleURLLoadedResourceData:]):
        * CacheLoader.subproj/IFURLLoadPrivate.h:
        * CacheLoader.subproj/IFURLMemoryCache.h:
        * CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache objectForURL:]):
        * CacheLoader.subproj/IFURLProtocolHandler.h:
        * CacheLoader.subproj/IFURLProtocolHandler.m: (+[IFURLProtocolHandler
        canonicalizeURL:]):
        * CookieManager.subproj/IFCookie.h:
        * CookieManager.subproj/IFCookieAcceptHandler.h:
        * CookieManager.subproj/IFCookieC.h:
        * CookieManager.subproj/IFCookieManager.h:
        * CookieManager.subproj/IFCookieManagerC.h:
        * CookieManager.subproj/IFCookiePrivate.h:
        * Database.subproj/IFDatabase.h:
        * Database.subproj/IFDatabase.m: (-[IFDatabase removeAllObjects]):
        * Misc.subproj/IFMutableDataPrivate.m: (-[IFByteRange isEqual:]):
        * Misc.subproj/WebFoundation.h:
        * Misc.subproj/WebFoundationPrivate.h:
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@623 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-14 23:36:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9d16aaf2b756e4b1e43dd6d27d7925f6d2b9b7b7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gl01s2ttk8bqr2', 1, e'Fixed a crash when IFPluginView were dealloced before URLHandles were complete


git-svn-id: svn://svn.chromium.org/blink/trunk@622 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-14 19:11:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c7de16ac1851029fd1174d02d2f44b103aedfc61');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gm01s2oefjrgg6', 1, e'Use NSSwitchButton for check boxes.


git-svn-id: svn://svn.chromium.org/blink/trunk@621 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-14 04:19:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2791f20152ede3027b30367cd3e52d421db378a2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gn01s2lttwzprk', 1, e'Fixed cleanup problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@620 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-14 03:18:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/794594768a2c50e701e92aaa51a952826238996e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00go01s22jae8iop', 1, e'Removed dead code.


git-svn-id: svn://svn.chromium.org/blink/trunk@619 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-14 03:18:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b9b1da4a8221616fa8d650b7f79afb6a6b4932f9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gp01s2vs6qefjt', 1, e'Fixed a bug where the QT Plug-in would complain about not using QT 5. This was because sometimes I wasn\'t passing a mime type to the plug-in


git-svn-id: svn://svn.chromium.org/blink/trunk@618 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-13 19:14:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d10150da6a6dd53b4d6f089674002aa8216ada4d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gq01s27tpsr03s', 1, e'2002-02-13  Kenneth Kocienda  <kocienda@apple.com>

    Cleaned up IFURLHandle and IFHTTPURLHandle init interfaces, making them attribute-based.
    Made URL handle classes immutable.
    Made additions to C glue to match changes made in Objective-C code.
    Added more FIXME bug lines.
    Cleaned up cache interfaces so their names are more consistent.

        * CacheLoader.subproj/IFHTTPURLHandle.h:
        * CacheLoader.subproj/IFHTTPURLHandle.m: (+[IFHTTPURLHandle canInitWithURL:]),
        (+[IFHTTPURLHandle canonicalizeURL:]), (-[IFHTTPURLHandle initWithURL:]),
        (-[IFHTTPURLHandle initWithURL:cached:]), (-[IFHTTPURLHandle requestHeaders]),
        (-[IFHTTPURLHandle requestData]), (-[IFHTTPURLHandle responseHeaders]),
        (-[IFHTTPURLHandle contentLengthReceived]), (-[IFHTTPURLHandle percentComplete]):
        * CacheLoader.subproj/IFHTTPURLHandleC.h:
        * CacheLoader.subproj/IFHTTPURLHandleC.m: (IFHTTPURLHandleCreate),
        (IFHTTPURLHandleGetRequestHeaders), (IFHTTPURLHandleGetResponseHeaders):
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        initWithURLLoad:]), (-[IFHTTPURLProtocolHandler beginLoadInBackground]):
        * CacheLoader.subproj/IFURLCache.h:
        * CacheLoader.subproj/IFURLCache.m: (-[IFURLCache
        setObject:forURL:attributes:expiry:]), (-[IFURLCache setObject:forURL:]),
        (-[IFURLCache currentUsage]):
        * CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache setObject:forURL:]),
        (-[IFURLDiskCache clearCache]), (-[IFURLDiskCache setSizeLimit:]),
        (-[IFURLDiskCache usage]):
        * CacheLoader.subproj/IFURLHandle.h:
        * CacheLoader.subproj/IFURLHandle.m: (+[IFURLHandle canonicalizeURL:]),
        (-[IFURLHandle initWithURL:]), (-[IFURLHandle initWithURL:cached:]),
        (-[IFURLHandle flushCachedData]), (-[IFURLHandle canonicalURL]), (-[IFURLHandle
        attributes]), (-[IFURLHandle failureReason]), (-[IFURLHandle dealloc]):
        * CacheLoader.subproj/IFURLHandleC.h:
        * CacheLoader.subproj/IFURLHandleC.m: (IFURLHandleCreate),
        (IFURLHandleGetCanonicalURL), (IFURLHandleGetAttributes):
        * CacheLoader.subproj/IFURLLoad.h:
        * CacheLoader.subproj/IFURLLoad.m: (+[IFURLLoad shutdown]), (-[IFURLLoad
        succeeded]), (-[IFURLLoad failedWithResultCode:]), (-[IFURLLoad
        beginOriginLoad]), (-[IFURLLoad didBeginLoading]), (-[IFURLLoad cancel]),
        (-[IFURLLoad updateStatistics]), (+[IFURLLoad IFURLLoadCacheCheckerRun:]):
        * CacheLoader.subproj/IFURLLoadManager.h:
        * CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager
        requestWithURLHandle:]), (-[IFURLLoadManager cancelRequestWithURLHandle:]),
        (-[IFURLLoadManager cancelAllRequestsWithURL:]), (-[IFURLLoadManager
        cancelAllRequestsInGroup:]), (-[IFURLLoadManager objectForURL:]),
        (-[IFURLLoadManager setObject:forURL:attributes:expiry:]), (-[IFURLLoadManager
        clearAllCaches]), (-[IFURLLoadManager handleURLLoadedResourceData:]):
        * CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache containsURL:]):
        * CacheLoader.subproj/WCURLHandleGlue.m: (WCURLHandleCreate):
        * Database.subproj/IFNDBMDatabase.m: (-[IFNDBMDatabase setObject:forKey:]),
        (-[IFNDBMDatabase removeObjectForKey:]), (-[IFNDBMDatabase objectForKey:]):
        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase setObject:forKey:]),
        (-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase keys]):
        * Misc.subproj/IFCWrapperHacks.h:
        * Misc.subproj/IFMutableDataPrivate.h:
        * Misc.subproj/IFMutableDataPrivate.m:
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@617 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-13 18:27:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ced737ded8f3cecef33f5c0b67fb194e715e717b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gr01s2krasio53', 1, e'Removed some KWQ code from kdelibs. Fixed a bug where OBJECT tags weren\'t working. Added multiple stream capability for plugins


git-svn-id: svn://svn.chromium.org/blink/trunk@616 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-13 03:05:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f5d776156fc6345cc070084174c0f3608e837b11');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gs01s2p9op22v7', 1, e'
Made basic forms work.


git-svn-id: svn://svn.chromium.org/blink/trunk@615 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-13 02:16:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e6de83b2374b235d6553ca3f2e00562ff5836ba5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gt01s2zbu1v6lj', 1, e'Made basic forms works.


git-svn-id: svn://svn.chromium.org/blink/trunk@614 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-13 02:16:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/abb67695108f9599cd7f0f147da7041215339b8e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gu01s23pxob1yx', 1, e'WebFoundation:
	Implement "file:" URL scheme. Also, fix up a few bugs this turned up.

	Implement new IFURLHandle and IFURLProtocolHandler subclasses for
	`file:\'. The protocol handler creates a new thread for each file
	load which could be considered somewhat excessive, but
	definitively avoids blocking, and allows for cancellation. Run
	loop sources are used to report success or failure, to avoid
	destroying the protocol handler before its work is done.

	* CacheLoader.subproj/IFFileURLHandle.h:
	* CacheLoader.subproj/IFFileURLHandle.m: (+[IFFileURLHandle canInitWithURL:]):
	* CacheLoader.subproj/IFFileURLProtocolHandler.h:
	* CacheLoader.subproj/IFFileURLProtocolHandler.m: (+[IFFileURLProtocolHandler
	canInitWithURL:]), (-[IFFileURLProtocolHandler initWithURLLoad:]),
	(-[IFFileURLProtocolHandler dealloc]), (-[IFFileURLProtocolHandler
	fileLoadThread]), (-[IFFileURLProtocolHandler sendLoadNotification]),
	(fileLoadThreadStart), (fileProtocolHandlerCopyDescription),
	(sendFinishedMessage), (-[IFFileURLProtocolHandler beginLoadInBackground]),
	(-[IFFileURLProtocolHandler endLoadInBackground]):

	Stick to `http:\' and `https:\' URIs instead of accepting all:

	* CacheLoader.subproj/IFHTTPURLHandle.m: (+[IFHTTPURLHandle canInitWithURL:]):
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (+[IFHTTPURLProtocolHandler
	canInitWithURL:]):

	Register subclasses for `file:\':

	* CacheLoader.subproj/IFURLHandle.m: (+[IFURLHandle initialize]):
	* CacheLoader.subproj/IFURLProtocolHandler.m: (+[IFURLProtocolHandler
	initialize]):


	* CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad beginOriginLoad]):
	Lock the IFURLLoad object while kicking off the protocol handler
	and examining the status code, otherwise a really fast protocol
	handler can report completion and therefore destroy this load
	object before it can look at the status. This leads to what we
	technically refer to as "crashy crashy".


	* WebFoundation.pbproj/project.pbxproj: Add new files to build.
WebCore:
	Make some tweaks to glue together KDE\'s and CF\'s concepts of URLs
	a bit better. In particular, CF thinks "file:/some/path" is an
	invalid URL, while KDE thinks this is the canonical form for a
	file URL.

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::openURL), (KHTMLPart::closeURL),
	(KHTMLPart::checkCompleted):
	* src/kwq/KWQKjobclasses.mm:


git-svn-id: svn://svn.chromium.org/blink/trunk@613 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-12 11:46:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1d6ad745ad98486ec9c456c8cf911df7ef15093f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gv01s2nkrooh8r', 1, e'	* borrowed-classes.txt: Stopped borrowing QVector, QList,
	QCollection and QTL.

	Extended tests for QList, QSortedList (to test QList::sort more
	thoroughly) and QVector. Especially excercise autodeletion
	semantics and corner cases more thoroughly.

	* Tests/qt/qlist-test.chk:
	* Tests/qt/qlist-test.cpp: (operator<<), (main):
	* Tests/qt/qsortedlist-test.chk:
	* Tests/qt/qsortedlist-test.cpp: (main):
	* Tests/qt/qvector-test.chk:
	* Tests/qt/qvector-test.cpp: (operator<<), (printVectorNullTolerant), (main):

	* Tests/qt/qmap-test.cpp (CheckRedBlackRules): Tweak a bit to
	violate QMap\'s abstraction for glass-box testing.
WebCore:
	Reimplemented QList, QVector and QCollection from
	scratch. Implemented copy-on-write optimization for QMap.

	Minimally reimplement QCollection.

	* src/kwq/qt/qcollection.h:
	* src/kwq/KWQCollection.mm: (QCollection::QCollection), (QCollection::operator=),
	(QCollection::~QCollection), (QCollection::autoDelete),
	(QCollection::setAutoDelete):

	* src/kwq/qt/qdict.h, src/kwq/qt/qptrdict.h: Include
	qcollection.h, not _qcollection.h

	Reimplement QList as a doubly-linked list.

	* src/kwq/qt/qlist.h:
	* src/kwq/KWQListImpl.h:
	* src/kwq/KWQListImpl.mm: (KWQListImpl::KWQListPrivate::copyList),
	(KWQListImpl::KWQListPrivate::KWQListPrivate),
	(KWQListImpl::KWQListPrivate::~KWQListPrivate),
	(KWQListIteratorImpl::KWQListIteratorPrivate::KWQListIteratorPrivate),
	(KWQListImpl::KWQListImpl), (KWQListImpl::~KWQListImpl), (KWQListImpl::isEmpty),
	(KWQListImpl::count), (KWQListImpl::clear), (KWQListImpl::sort),
	(KWQListImpl::at), (KWQListImpl::insert), (KWQListImpl::remove),
	(KWQListImpl::removeFirst), (KWQListImpl::removeLast), (KWQListImpl::removeRef),
	(KWQListImpl::getLast), (KWQListImpl::current), (KWQListImpl::first),
	(KWQListImpl::last), (KWQListImpl::next), (KWQListImpl::prev),
	(KWQListImpl::take), (KWQListImpl::append), (KWQListImpl::prepend),
	(KWQListImpl::containsRef), (KWQListImpl::assign), (KWQListImpl::addIterator),
	(KWQListImpl::removeIterator), (KWQListIteratorImpl::KWQListIteratorImpl),
	(KWQListIteratorImpl::~KWQListIteratorImpl), (KWQListIteratorImpl::count),
	(KWQListIteratorImpl::toFirst), (KWQListIteratorImpl::toLast),
	(KWQListIteratorImpl::current), (KWQListIteratorImpl::operator--),
	(KWQListIteratorImpl::operator++), (KWQListIteratorImpl::operator=):

	Reimplement QVector in terms of CFArray.

	* src/kwq/qt/qvector.h:
	* src/kwq/KWQVectorImpl.h:
	* src/kwq/KWQVectorImpl.mm: (KWQVectorImpl::KWQVectorPrivate::KWQVectorPrivate),
	(KWQVectorImpl::KWQVectorPrivate::~KWQVectorPrivate),
	(KWQVectorImpl::KWQVectorImpl), (KWQVectorImpl::~KWQVectorImpl),
	(KWQVectorImpl::clear), (KWQVectorImpl::isEmpty), (KWQVectorImpl::count),
	(KWQVectorImpl::size), (KWQVectorImpl::remove), (KWQVectorImpl::resize),
	(KWQVectorImpl::insert), (KWQVectorImpl::at), (KWQVectorImpl::assign),
	(KWQVectorImpl::KWQVectorImpl::swap):

	Implemented copy-on-write optimization for QMap. This had the
	pleasant side effect of improving the separation between pointer
	manipulation and key/value manipulation.

	* src/kwq/qt/qmap.h:
	* src/kwq/KWQMapImpl.h:
	* src/kwq/KWQMapImpl.mm: (KWQMapImpl::KWQMapPrivate::KWQMapPrivate),
	(KWQMapImpl::KWQMapPrivate::~KWQMapPrivate), (KWQMapImpl::KWQMapImpl),
	(KWQMapImpl::~KWQMapImpl), (KWQMapImpl::copyOnWrite), (KWQMapImpl::copyTree),
	(KWQMapImpl::rebalanceAfterInsert), (KWQMapImpl::rebalanceAfterRemove),
	(KWQMapImpl::findInternal), (KWQMapImpl::insertInternal),
	(KWQMapImpl::removeInternal), (KWQMapImpl::swap), (KWQMapImpl::countInternal),
	(KWQMapImpl::clearInternal), (KWQMapImpl::beginInternal),
	(KWQMapImpl::endInternal):

	* src/kwq/Makefile.am: Add new files to build.

	* src/kdelibs/khtml/rendering/render_text.cpp
	(TextSlaveArray::findFirstMatching): Fix two places where the KDE
	code was depending on implementation details of QVector.


git-svn-id: svn://svn.chromium.org/blink/trunk@612 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-12 08:46:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/012d79f83a1f22b442f0b785693f61413795d672');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gw01s2pr4pak6y', 1, e'	Fixed bug where clicking on empty browser page would crash. This could
	happen when the start page was empty, or failed to load.

	* WebView.subproj/IFWebView.mm:
	(-[IFWebView mouseUp:]), (-[IFWebView mouseDown:]):
	Checked for nil widget before dispatching mouse events.


git-svn-id: svn://svn.chromium.org/blink/trunk@611 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-12 04:32:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1024dfd1954367e735fc8ae692c3ebcc6af5afd3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gx01s2m7t776dw', 1, e'2002-02-11  Kenneth Kocienda  <kocienda@apple.com>

        Removed a bunch of logging messages to reduce the spamage.

        * CacheLoader.subproj/IFHTTPURLHandle.h:
        * CacheLoader.subproj/IFHTTPURLHandle.m: (-[IFHTTPURLHandle
        initWithURL:flags:group:requestMethod:requestDataDict:]), (-[IFHTTPURLHandle
        initWithURL:flags:group:requestMethod:requestData:]), (-[IFHTTPURLHandle
        setRequestData:]):
        * CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache objectForURL:]):
        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase setObject:forKey:]):
        * Misc.subproj/IFMutableData.m: (-[IFMutableData getBytes:length:]),
        (-[IFMutableData getBytes:range:]), (-[IFMutableData subdataWithRange:]):
        * Misc.subproj/IFMutableDataPrivate.m: (-[IFMutableData
        createBlockForRange:buffer:]), (-[IFMutableData
        dataObjectsGreaterThanMatchedOffset:]), (-[IFMutableData byteBlocksForRange:]),
        (-[IFMutableData bytesInRange:]):
        * Misc.subproj/IFNSFileManagerExtensions.m: (-[NSFileManager
        createIntermediateDirectoriesForPath:attributes:]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@610 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-11 23:34:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1b8ae25d1e9f365af451c73b874787fdd6781da4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gy01s2m1c6wn7s', 1, e'2002-02-11  Kenneth Kocienda  <kocienda@apple.com>

    Added new files.

	* CacheLoader.subproj/IFCachedObject.h:
	* CacheLoader.subproj/IFCachedObject.m:
	* CacheLoader.subproj/IFURLCacheLoaderConstants.h:
	* CacheLoader.subproj/IFURLCacheLoaderConstants.m:

    Changed setRequestData to return BOOL to reflect fact that it might fail given
    the state of the handle.

	* CacheLoader.subproj/IFHTTPURLHandle.h:
	* CacheLoader.subproj/IFHTTPURLHandle.m: (-[IFHTTPURLHandle setRequestData:]):


    Added setResponseHeaders method, and cleaned up code that actually reads the
    stream to set headers.

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
	endLoadInBackground]), (-[IFHTTPURLProtocolHandler performHTTPHeaderRead:]),
	(-[IFHTTPURLProtocolHandler setResponseHeaders:]):


    Modified class so that it is smart about attributes associated with cached data
    and not just the data itself. Added IFURLCacheObject class to help out with this.

    Tweaked cache object accessor interface.

	* CacheLoader.subproj/IFURLCache.h:
	* CacheLoader.subproj/IFURLCache.m: (-[IFURLCache objectForURL:]), (-[IFURLCache
	cacheObject:forURL:withAttributes:untilDate:]), (-[IFURLCache
	cacheObject:forURL:]), (-[IFURLCache setSizeLimit:]), (-[IFURLCache
	initWithSizeLimit:]):
	* CacheLoader.subproj/IFURLCacheObject.h:
	* CacheLoader.subproj/IFURLCacheObject.m: (+[IFURLCacheObject
	URLCacheObject:url:attributes:expiry:]), (-[IFURLCacheObject initWithCoder:]),
	(-[IFURLCacheObject encodeWithCoder:]), (-[IFURLCacheObject object]),
	(-[IFURLCacheObject url]), (-[IFURLCacheObject attributes]), (-[IFURLCacheObject
	expiry]), (-[IFURLCacheObject dealloc]):


    Changed on-disk cache location from a URL to a path.

    Added implementation of disk caching with a file-per-URL database as the backing store.

	* CacheLoader.subproj/IFURLDiskCache.h:
	* CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache initWithSizeLimit:]),
	(-[IFURLDiskCache initWithSizeLimit:path:]), (-[IFURLDiskCache objectForURL:]),
	(-[IFURLDiskCache cacheObject:forURL:]), (-[IFURLDiskCache containsURL:]),
	(-[IFURLDiskCache invalidateURL:]):


	Removed fromStream:(CFReadStreamRef)stream from interface. The need to pass this has been
	obsoleted by the creation of protocol handler classes.

	Fixed a bug that assumed we always get back a no-copy data object from the network. The
	disk cache does not return such objects.

	* CacheLoader.subproj/IFURLHandle.h:
	* CacheLoader.subproj/IFURLHandle.m: (+[IFURLHandle initialize]), (-[IFURLHandle
	didLoadData:]), (-[IFURLHandle notifyClientsDidLoadData]):
	* CacheLoader.subproj/IFURLHandleC.h:
	* CacheLoader.subproj/IFURLHandleC.m: (IFURLHandleDidLoadData):
	* CacheLoader.subproj/IFURLHandleConstants.h:


    Much work to support the on-disk cache, and returning attributes with cached objects.

	* CacheLoader.subproj/IFURLLoad.h:
	* CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad initWithURL:flags:]),
	(-[IFURLLoad setResourceData:]), (-[IFURLLoad updateHandlesWithData]),
	(-[IFURLLoad cleanup]), (+[IFURLLoad IFURLLoadCacheCheckerRun:]):
	* CacheLoader.subproj/IFURLLoadManager.h:
	* CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager
	initWithDefaultStack]), (-[IFURLLoadManager cacheObjectForURL:]),
	(-[IFURLLoadManager cacheObject:forURL:withAttributes:untilDate:]),
	(-[IFURLLoadManager handleURLLoadDone:]), (-[IFURLLoadManager
	handleURLLoadedResourceData:]):


    Changed internal IFMemoryCacheObject so that it subclasses the new IFCacheObject.

    Now supports returning attributes with cached objects.

	* CacheLoader.subproj/IFURLMemoryCache.m: (+[IFMemoryCacheObject
	memoryCacheObjectWithObject:url:attributes:expiry:]), (-[IFMemoryCacheObject
	setExpiration:]), (-[IFMemoryCacheObject expire]), (-[IFMemoryCacheObject
	isExpired]), (-[IFMemoryCacheObject dealloc]), (-[IFURLMemoryCache
	truncateToSizeLimit]), (-[IFURLMemoryCache objectForURL:]):


    Added database subproj.

	* Database.subproj/IFDatabase.h:
	* Database.subproj/IFDatabase.m: (-[IFDatabase setObject:forKey:]), (-[IFDatabase
	removeObjectForKey:]), (-[IFDatabase objectForKey:]), (-[IFDatabase keys]),
	(-[IFDatabase count]), (-[IFDatabase initWithPath:]), (-[IFDatabase dealloc]),
	(-[IFDatabase open]), (-[IFDatabase close]), (-[IFDatabase sync]), (-[IFDatabase
	path]), (-[IFDatabase isOpen]):
	* Database.subproj/IFNDBMDatabase.h:
	* Database.subproj/IFNDBMDatabase.m: (-[IFNDBMDatabase initWithPath:]),
	(-[IFNDBMDatabase dealloc]), (-[IFNDBMDatabase setObject:forKey:]),
	(-[IFNDBMDatabase removeObjectForKey:]), (-[IFNDBMDatabase objectForKey:]),
	(-[IFNDBMDatabase keys]), (-[IFNDBMDatabase open]), (-[IFNDBMDatabase close]),
	(-[IFNDBMDatabase sync]):
	* Database.subproj/IFURLFileDatabase.h:
	* Database.subproj/IFURLFileDatabase.m: (+[IFURLFileDatabase initialize]),
	(-[IFURLFileDatabase initWithPath:]), (-[IFURLFileDatabase dealloc]),
	(+[IFURLFileDatabase uniqueFilePathForKey:]), (-[IFURLFileDatabase
	setObject:forKey:]), (-[IFURLFileDatabase removeObjectForKey:]),
	(-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase keys]),
	(-[IFURLFileDatabase open]), (-[IFURLFileDatabase close]), (-[IFURLFileDatabase
	sync]):
	* Misc.subproj/IFMutableDataPrivate.m: (-[IFData
	initWithBytes:length:copy:freeWhenDone:bytesAreVM:]):


    Added class.

	* Misc.subproj/IFNSFileManagerExtensions.h:
	* Misc.subproj/IFNSFileManagerExtensions.m: (-[NSFileManager
	createDirectoryAtPathWithIntermediateDirectories:attributes:]), (-[NSFileManager
	createFileAtPathWithIntermediateDirectories:contents:attributes:directoryAttribut
	es:]), (-[NSFileManager createIntermediateDirectoriesForPath:attributes:]):


    Removed obsoleted IFContentType.

	* Misc.subproj/WebFoundation.h:
	* WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@609 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-11 19:05:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/562113f23658dbd2b34ccf0beabbe4d6838097b3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00gz01s225i0bw1m', 1, e'	Changed back & forward to goBack and goForward and made them not return
	a value (so signatures match those in WebBrowser). Added backEntry and
	forwardEntry that don\'t alter the list. These will be needed to ask to
	go to the URL at the back position without altering the back list until
	the change is committed.

	* History.subproj/IFBackForwardList.h:
	* History.subproj/IFBackForwardList.m: (-[IFBackForwardList goBack]),
	(-[IFBackForwardList backEntry]), (-[IFBackForwardList currentEntry]),
	(-[IFBackForwardList forwardEntry]), (-[IFBackForwardList goForward]):


	* BrowserDocument.m: (-[BrowserDocument goBack]), (-[BrowserDocument goForward]):
	Updated to match new API from IFBackForwardList. Behavior is unchanged for now.


git-svn-id: svn://svn.chromium.org/blink/trunk@608 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-09 01:10:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/192264b33ceb33abb28c795853296984d1d63321');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h001s2o9u84iv4', 1, e'removed unnecessary adjustment for scroll width.`:


git-svn-id: svn://svn.chromium.org/blink/trunk@607 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-08 02:20:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e8337fa4ca8dcf17544d4e4515b85e27efd75d12');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h101s2zsxcoozh', 1, e'Fixed deallocs.


git-svn-id: svn://svn.chromium.org/blink/trunk@606 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-08 02:20:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/94924261d54bc1690cb6e41bd5a7cfbf2e9bea2c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h201s2ovhe3x31', 1, e'New file.


git-svn-id: svn://svn.chromium.org/blink/trunk@605 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-08 01:56:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/62225ee6e4ac853694fbd3aec5c6ff64e7ca969d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h301s2483b7cxo', 1, e'More changes to IFLocationChangeHandler API.


git-svn-id: svn://svn.chromium.org/blink/trunk@604 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-08 01:55:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5d838375b90a5e25f06e7a323854ca807cd2d7a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h401s2dhb5c43q', 1, e'factor private class out of IFWebFrame.


git-svn-id: svn://svn.chromium.org/blink/trunk@603 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-08 01:38:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f5f43a1407704cbbaf4b38617c84af8791a73461');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h501s2x714h9i6', 1, e'Fixed HIToolbox include problem. Ricard added a call to stop in IFWebViewPrivate


git-svn-id: svn://svn.chromium.org/blink/trunk@602 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-08 01:26:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/16a15416104447dcac408dec6b2701897536043d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hn01s2m9uc3kxb', 1, e'    Some groundwork to bring WebFoundation callbacks up to
    WebKit.


git-svn-id: svn://svn.chromium.org/blink/trunk@648 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-21 01:48:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c754491545844609facf78ec98772133dbe69278');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600ho01s2oqb93aum', 1, e'	* WebView.subproj/IFWebController.h: Fix my WebController screw-up.


git-svn-id: svn://svn.chromium.org/blink/trunk@647 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-20 21:53:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d86a9168de628a810008d5478c2616540b98d79d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00id01s29z6ush8m', 1, e'Improved the plug-in search scheme to make it easier to change the plug-in locations in the future. Added Alexander\'s PlugIns directory to the search locations


git-svn-id: svn://svn.chromium.org/blink/trunk@683 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-02 00:29:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2a4575cb2055c0e955a72c64c9ffa5364d69afb2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h601s2q6h5l8b7', 1, e'- Renamed WebCore plug-in classes to WC*.
- Created Plugins.subproj in WebKit.
- Created IFCarbonWindowView.
- Moved IFPluginView to WebKit.

- Turned off -Werror in WebKit until Macjiej updates the warning problem in NSStringBuffer.h

Modified Files:
	WebCore/src/kwq/KWQKConfigBase.mm
	WebCore/src/kwq/KWQKHTMLPart.mm WebCore/src/kwq/Makefile.am
 	WebCore/src/kwq/npapi.h WebCore/src/kwq/npapi.mm
	WebKit/WebKit.pbproj/project.pbxproj
Added Files:
	WebCore/src/kwq/WCPlugin.h WebCore/src/kwq/WCPlugin.mm
	WebCore/src/kwq/WCPluginDatabase.h
	WebCore/src/kwq/WCPluginDatabase.mm
	WebCore/src/kwq/WCPluginWidget.h
	WebCore/src/kwq/WCPluginWidget.mm
	WebKit/Plugins.subproj/IFCarbonWindowView.h
	WebKit/Plugins.subproj/IFCarbonWindowView.m
	WebKit/Plugins.subproj/IFPluginView.h
	WebKit/Plugins.subproj/IFPluginView.mm
Removed Files:
	WebCore/src/kwq/WKPlugin.h WebCore/src/kwq/WKPlugin.mm
	WebCore/src/kwq/WKPluginDatabase.h
	WebCore/src/kwq/WKPluginDatabase.mm
	WebCore/src/kwq/WKPluginView.h WebCore/src/kwq/WKPluginView.mm
	WebCore/src/kwq/WKPluginWidget.h
	WebCore/src/kwq/WKPluginWidget.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@601 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-08 00:21:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d2cdae793824473a0177d16e46737e08f95635aa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h701s2b8hq9by6', 1, e'Updated IFLocationChangeHandler API.


git-svn-id: svn://svn.chromium.org/blink/trunk@600 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-07 23:03:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f884948ab18554a40896495b184bd21ddafe4a2e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsv9gc00h801s2s3n9ryho', 1, e'Fixed comment.


git-svn-id: svn://svn.chromium.org/blink/trunk@599 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-07 02:15:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/584a42bf506160fac3c9da4224dbe8135c17899e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600h901s2h9jxjhub', 1, e'Fixed a problem where plug-ins would show up blank


git-svn-id: svn://svn.chromium.org/blink/trunk@662 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-22 23:58:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/76e35d37dc753c0a20cda8d00f774027ace1fc4d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600ha01s2wpsh076l', 1, e'	Added relatively complete unit tests for the two simple methods in
	this category. These found bugs! Yay for unit tests!

	* Tests/WebFoundation-Misc/ifnscalendardateextensions-test.chk:
	* Tests/WebFoundation-Misc/ifnscalendardateextensions-test.m: (main):

	Fixed problems in NSCalendarDate extensions revealed by unit tests.

	* Misc.subproj/IFNSCalendarDateExtensions.h:
	* Misc.subproj/IFNSCalendarDateExtensions.m:
	Removed [NSCalendarDate daysSinceDate:], which was broken.
	(-[NSCalendarDate compareDay:]): New method, returns NSComparisonResult.
	(-[NSCalendarDate isToday]): Rewrote to use compareDay:

	* WebFoundation.pbproj/project.pbxproj: Didn\'t change this on purpose, probably
	auto-changed by opening it in Puma.


	Updated for modified NSCalendarDate extensions API.

	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate findIndex:forDay:]): use compareDate: instead of
	daysSinceDate:, which no longer exists.


git-svn-id: svn://svn.chromium.org/blink/trunk@661 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-22 22:26:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/606f68a9d8e2666e78456d620d0b0118736c75d8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hb01s2pmqfqci1', 1, e'Added data: to didFinish:


git-svn-id: svn://svn.chromium.org/blink/trunk@660 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 22:13:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d43a1db6dc0cc86c0eec4df4d44d87f5aef150b2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hc01s2frh99hky', 1, e'Added data: to IFURLHandleResourceDidFinishLoading:.


git-svn-id: svn://svn.chromium.org/blink/trunk@659 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 21:20:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/977bed51cac49ce2af321b909f1bb5fefc37b7f3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hd01s2dod0jjtp', 1, e'Implemented missing getter for provisionalDataSource.


git-svn-id: svn://svn.chromium.org/blink/trunk@658 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 20:36:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c8b87bd54c105ba1823841d0307a96f77ac6b0cf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600he01s24cbqcjpp', 1, e'Normalized code paths for setMainDataSource on controller and setDataSource on frame.


git-svn-id: svn://svn.chromium.org/blink/trunk@657 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 20:27:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/45e4545a93509beffc985e0fa9af9112f3232198');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hf01s27b8telmg', 1, e'Added support for web page URL requests. Fixed a warning


git-svn-id: svn://svn.chromium.org/blink/trunk@656 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-22 19:08:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/da3c3d0be3cf33f48683b1c93c302d0f631d7e21');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hg01s2kq2qb61b', 1, e'2002-02-22  Kenneth Kocienda  <kocienda@apple.com>

    Added missing calls to [super dealloc]

    Changed memory allocation strategy in IFHTTPURLProtocolHandler. This no
    longer allocates a fixed size block, but only allocates the size that
    has been read from the network.

    Fixed potential smasher related to freeing run loop sources.

    Many memory cleanups, mostly work in tracking down ref counts and making
    sure things get freed when they should.

    Changed the way that the handle array is maintained inside IFURLLoad.
    The new code minimizes copying of the handle list while preserving thread
    safety.

    Some fixes in IFURLLoadManager.m to support cancelling URLs. More work
    to be done here.

    Removed IFByteBlock class from IFMutableData and replaced with a no-copy
    NSData from Foundation. The IFByteBlock class seemed redundant, and I could
    remove the IFData class as well. This is a nice reduction in complexity in
    the no-copy system.

	* CacheLoader.subproj/IFFileURLProtocolHandler.m: (-[IFFileURLProtocolHandler
	dealloc]):
	* CacheLoader.subproj/IFHTTPURLHandle.m:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
	setResponseHeaders:]), (-[IFHTTPURLProtocolHandler performStreamRead:]):
	* CacheLoader.subproj/IFURLCacheObject.m:
	* CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache
	initWithSizeLimit:path:]):
	* CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandleInstanceVariables dealloc]),
	(-[IFURLHandle cancelLoadInBackground]), (-[IFURLHandle backgroundLoadDidBegin]),
	(-[IFURLHandle didLoadData:]), (-[IFURLHandle backgroundLoadComplete]),
	(-[IFURLHandle backgroundLoadFailedWithResultCode:]), (-[IFURLHandle
	setResourceData:]), (-[IFURLHandle notifyClientsDidLoadData]):
	* CacheLoader.subproj/IFURLHandleCallBackClient.m: (-[IFURLHandleCallBackClient
	dealloc]):
	* CacheLoader.subproj/IFURLLoad.h:
	* CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad handles]), (-[IFURLLoad
	didLoadBytes:length:]), (-[IFURLLoad updateHandles]), (-[IFURLLoad succeeded]),
	(-[IFURLLoad failedWithResultCode:]), (-[IFURLLoad dealloc]), (+[IFURLLoad
	shutdown]), (+[IFURLLoad streamHandlerRunLoop]), (-[IFURLLoad
	initWithURL:attributes:flags:]), (-[IFURLLoad addHandle:]), (-[IFURLLoad
	removeHandle:]), (-[IFURLLoad removeAllHandles]), (-[IFURLLoad didBeginLoading]),
	(-[IFURLLoad checkForNewHandles]), (+[IFURLLoad IFURLLoadCacheCheckerRun:]),
	(+[IFURLLoad IFURLLoadCFStreamHandlerRun:]):
	* CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager
	initWithDefaultStack]), (-[IFURLLoadManager objectForURL:]), (-[IFURLLoadManager
	requestWithURLHandle:]), (-[IFURLLoadManager cancelRequestWithURLHandle:]):
	* CacheLoader.subproj/IFURLLoadPrivate.h:
	* CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache
	initWithSizeLimit:]), (-[IFURLMemoryCache dealloc]):
	* CacheLoader.subproj/IFURLProtocolHandler.m: (-[IFURLProtocolHandler
	initWithURLLoad:]):
	* CookieManager.subproj/IFCookie.m: (-[IFCookiePrivate dealloc]), (-[IFCookie
	dealloc]):
	* CookieManager.subproj/IFCookieManager.m: (-[IFCookieManagerPrivate dealloc]),
	(-[IFCookieManager dealloc]):
	* CookieManager.subproj/IFCookieManagerC.m: (-[IFCookieCallBackAcceptHandler
	dealloc]):
	* Misc.subproj/IFBinaryHeap.m: (-[IFBinaryHeap dealloc]):
	* Misc.subproj/IFMonitor.m: (-[IFMonitor dealloc]):
	* Misc.subproj/IFMutableData.h:
	* Misc.subproj/IFMutableData.m: (-[IFMutableData getBytes:length:]),
	(-[IFMutableData getBytes:range:]), (-[IFMutableData subdataWithRange:]),
	(-[IFMutableData initWithBytes:length:copy:freeWhenDone:bytesAreVM:]),
	(-[IFMutableData dealloc]):
	* Misc.subproj/IFMutableDataPrivate.h:
	* Misc.subproj/IFMutableDataPrivate.m: (-[IFByteRange dealloc]), (-[IFMutableData
	createBlockForRange:buffer:]), (-[IFMutableData
	dataObjectsGreaterThanMatchedOffset:]), (-[IFMutableData byteBlocksForRange:]),
	(-[IFMutableData bytesInRange:]), (-[IFMutableData appendBytes:length:]):
	* Misc.subproj/IFReadWriteLock.m: (-[IFReadWriteLock dealloc]):
	* Misc.subproj/IFRecursiveReadWriteLock.m:
	* WebFoundation.pbproj/project.pbxproj:


        Sent handle an autorelease message.

        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
        WCURLHandleResourceDidCancelLoading:userData:]), (-[KHTMLPartLoadClient
        WCURLHandleResourceDidFinishLoading:userData:]), (-[KHTMLPartLoadClient
        WCURLHandle:resourceDidFailLoadingWithResult:userData:]):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        WCURLHandleResourceDidCancelLoading:userData:]), (-[URLLoadClient
        WCURLHandleResourceDidFinishLoading:userData:]), (-[URLLoadClient
        WCURLHandle:resourceDidFailLoadingWithResult:userData:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@655 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-22 16:06:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c5b596bc8da4ae806c853209eccd0dcb0e0c8b36');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hh01s2ue5vwcvt', 1, e'Top level:
	* Tests/harness.c: (runtest): Run regression tests with debug
	frameworks. If they pass, run them again so the leak checker
	actually works (it never finds leaks with the debug frameworks in
	use).

	Fix regression test failures:

	* Tests/CookieManager/wkcookie-test.m: (main):
	* Tests/WebFoundation-Misc/ifnsobjectextensions-test.m: (main):
WebCore:
	* src/kwq/KWQString.mm: (QString::fill): Fix a bug that was
	triggering assertion failures in CF.

	* src/kdelibs/kjs/kjs-test: Turn off some environment variables to
	make the tests pass.
WebFoundation:
	* Misc.subproj/IFNSStringExtensions.m: (-[NSString
	parseAsKeyValuePairHandleQuotes:]): Fix a bug that was leading to
	an assertion failure.


git-svn-id: svn://svn.chromium.org/blink/trunk@654 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-22 06:31:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/38592f82ec7159ababb88ad41c064784b6d24757');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hi01s25jtcpmz0', 1, e'Stop support.


git-svn-id: svn://svn.chromium.org/blink/trunk@653 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 02:40:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f8a41140c03a76ef1e10933e9862d4ee030cad6d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hj01s2ynobn6vy', 1, e'Stop supprt.


git-svn-id: svn://svn.chromium.org/blink/trunk@652 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-22 02:40:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/50ec0645fd14c22dfdb8c310be5c19fb4e375fd5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hk01s25s8n2do0', 1, e'IFCarbonWindowView is no longer necessary. Removing.


git-svn-id: svn://svn.chromium.org/blink/trunk@651 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-22 02:21:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/daa347300f46a217550b0a4e8e0b7d505effa910');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hl01s2t2wos7q0', 1, e'BIG FIX: Plug-ins now use the window\'s port and share this port with other plug-ins. This allowed me to fix scrolling and clipping and mouse events.


git-svn-id: svn://svn.chromium.org/blink/trunk@650 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-22 02:14:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c55c1438b36b7fe1c0fb50a415ea557a41dd8bc4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ie01s2d02zggf4', 1, e'Disabling Java for now


git-svn-id: svn://svn.chromium.org/blink/trunk@682 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-01 23:13:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/071e6a504af99baf84232d4f0fd7f53667bb576b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hp01s2ojpy27xl', 1, e'	Add automated leak checking to all the tests.

	* Tests/CookieManager/.cvsignore:
	* Tests/CookieManager/Makefile.am:
	* Tests/CookieManager/wkcookie-test.m: (main):
	* Tests/CookieManager/wkcookiemanager-test.m: (main):
	* Tests/Makefile.am:
	* Tests/WebFoundation-Misc/.cvsignore:
	* Tests/WebFoundation-Misc/Makefile.am:
	* Tests/WebFoundation-Misc/ifnsarrayextensions-test.m: (main):
	* Tests/WebFoundation-Misc/ifnsobjectextensions-test.m: (main):
	* Tests/WebFoundation-Misc/ifnsstringextensions-test.m: (main):
	* Tests/WebFoundation-Misc/ifrecursivereadwritelock-test.m: (thread_main),
	(main):
	* Tests/harness.c: (runtest), (main):
	* Tests/kde/.cvsignore:
	* Tests/kde/Makefile.am:
	* Tests/kde/kurl-test.chk:
	* Tests/kde/kurl-test.cpp: (main):
	* Tests/libiftest/.cvsignore:
	* Tests/libiftest/IFCheckLeaks.c: (IFOverwriteRegisters), (IFClearTheStack),
	(IFCheckLeaksAtExitHandler), (IFCheckLeaksAtExit):
	* Tests/libiftest/IFCheckLeaks.h:
	* Tests/libiftest/Makefile.am:
	* Tests/libiftest/objc-dummy.mm: (IF_objective_c_hack):
	* Tests/qt/.cvsignore:
	* Tests/qt/Makefile.am:
	* Tests/qt/qarray-test.cpp: (main):
	* Tests/qt/qbuffer-test.cpp: (main):
	* Tests/qt/qchar-test.cpp: (main):
	* Tests/qt/qcstring-test.cpp: (main):
	* Tests/qt/qdate-test.cpp: (main):
	* Tests/qt/qdatetime-test.cpp: (main):
	* Tests/qt/qdict-test.cpp: (main):
	* Tests/qt/qlist-test.cpp: (main):
	* Tests/qt/qmap-test.cpp: (main):
	* Tests/qt/qpoint-test.cpp: (main):
	* Tests/qt/qptrdict-test.cpp: (main):
	* Tests/qt/qrect-test.cpp: (main):
	* Tests/qt/qregexp-test.cpp: (main):
	* Tests/qt/qsize-test.cpp: (main):
	* Tests/qt/qsortedlist-test.cpp: (main):
	* Tests/qt/qstack-test.cpp: (main):
	* Tests/qt/qstring-test.cpp: (main):
	* Tests/qt/qstringlist-test.cpp: (main):
	* Tests/qt/qtime-test.cpp: (main):
	* Tests/qt/qvaluelist-test.cpp: (main):
	* Tests/qt/qvector-test.cpp: (main):
	* configure.in:


git-svn-id: svn://svn.chromium.org/blink/trunk@646 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-20 20:06:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1d0eedff8637fcebc7b6a520b9770c7b821ce0b7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hq01s2s3azz62c', 1, e'	Finished first cut at IFWebHistory implementation. All methods are implemented
	except the string-matching ones.

	* History.subproj/IFURIEntry.h:
	* History.subproj/IFURIEntry.m: (-[IFURIEntry initWithURL:title:image:comment:]),
	(-[IFURIEntry lastVisitedDate]), (-[IFURIEntry setModificationDate:]),
	(-[IFURIEntry setLastVisitedDate:]):
	Changed all NSDates to be NSCalendarDates.

	* History.subproj/IFWebHistory.h:
	* History.subproj/IFWebHistory.m: (-[IFWebHistory init]), (-[IFWebHistory
	dealloc]), (-[IFWebHistory sendEntriesChangedNotification]), (-[IFWebHistory
	addEntry:]), (-[IFWebHistory removeEntry:]), (-[IFWebHistory
	removeEntriesForDay:]), (-[IFWebHistory removeAllEntries]), (-[IFWebHistory
	orderedLastVisitedDays]), (-[IFWebHistory orderedEntriesLastVisitedOnDay:]),
	(-[IFWebHistory entriesWithAddressContainingString:]), (-[IFWebHistory
	entriesWithTitleOrAddressContainingString:]), (-[IFWebHistory containsURL:]):
	Implemented all IFWebHistory methods by calling through to IFWebHistoryPrivate object.
	Send a change notification each time the actual data changes. Removed all
	canned-data mechanisms.

	* History.subproj/IFWebHistoryPrivate.h:
	* History.subproj/IFWebHistoryPrivate.m: (-[IFWebHistoryPrivate init]),
	(-[IFWebHistoryPrivate dealloc]), (-[IFWebHistoryPrivate findIndex:forDay:]),
	(-[IFWebHistoryPrivate insertEntry:atDateIndex:]), (-[IFWebHistoryPrivate
	removeEntryForURLString:]), (-[IFWebHistoryPrivate addEntry:]),
	(-[IFWebHistoryPrivate removeEntry:]), (-[IFWebHistoryPrivate
	removeEntriesForDay:]), (-[IFWebHistoryPrivate removeAllEntries]),
	(-[IFWebHistoryPrivate orderedLastVisitedDays]), (-[IFWebHistoryPrivate
	orderedEntriesLastVisitedOnDay:]), (-[IFWebHistoryPrivate
	entriesWithAddressContainingString:]), (-[IFWebHistoryPrivate
	entriesWithTitleOrAddressContainingString:]), (-[IFWebHistoryPrivate
	containsURL:]):
	Implemented guts of history mechanism using a dictionary for URL lookup and
	a sorted array of dates with entries and a sorted array of sorted arrays of
	entries per date.

	* WebKit.pbproj/project.pbxproj: Updated for new files


    Made History window work.

	* BrowserDocument.h: whitespace changes only

	* BrowserDocument.m:
	(-[BrowserDocument addHistoryEntryForCurrentPage]): New method.
	(-[BrowserDocument locationChangeDone:forFrame:]): Call new method.
	(-[BrowserDocument locationChangeStartedForFrame:initiatedByUserEvent:]):
	Changed postNotification to use simpler userinfo-free version.

	* GlobalHistory.m:
	(+[GlobalHistory sharedGlobalHistory]): Register for changed notifications
	from IFWebHistory

	(-[GlobalHistory outlineView:objectValueForTableColumn:byItem:]): Use "today"
	for current date; "unknown title" for nil titles.
	(-[GlobalHistory historyIsEmpty]): New private convenience method.
	(-[GlobalHistory expandToday]): New method, expands the triangle for today\'s
	history entries if the first triangle is for today.
	(-[GlobalHistory updateButtons]),
	(-[GlobalHistory validateUserInterfaceItem:]): Use historyIsEmpty
	(-[GlobalHistory receivedEntriesChangedNotification:]): New method, react to
	change notification by reloading data and updating buttons.
	(-[GlobalHistory removeSelectedItems:]),
	(-[GlobalHistory removeAll:]):
	Implemented by calling IFWebHistory methods.
	(-[GlobalHistory showWindow:]): expand today\'s triangle

    * English.lproj/History.nib: Removed "completely fake" from History window title.


git-svn-id: svn://svn.chromium.org/blink/trunk@645 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-20 01:14:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/df2446dd22cb71b8b3758b63588c38e4cf75ba85');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hr01s23wcp7kip', 1, e'	First piece of implementing IFWebHistory. None of the mutators do anything,
	and the accessors return canned data. But at least all the temporary hackery
	is hiding behind legitimate API.

	* History.subproj/IFWebHistory.h:
	* History.subproj/IFWebHistory.m:

	(+[IFWebHistory sharedWebHistory]):
	Implemented sensibly.

	(-[IFWebHistory createTestEntryWithURLString:title:date:]),
	(-[IFWebHistory	testDataDates]), (-[IFWebHistory testData]),
	Private temporary hackery to return fake data.

	(-[IFWebHistory orderedLastVisitedDays]),
	(-[IFWebHistory	orderedEntriesLastVisitedOnDay:]):
	Implemented using temporary hackery.

	(-[IFWebHistory addEntry:]),
	(-[IFWebHistory removeEntry:]),
	(-[IFWebHistory removeAllEntries]):
	Unimplemented mutator methods.

	(-[IFWebHistory	entriesWithAddressContainingString:]),
	(-[IFWebHistory	entriesWithTitleOrAddressContainingString:]),
	(-[IFWebHistory containsURL:]):
	Methods that we\'ll need eventually, currently unimplemented. We may flesh out
	the API a little more before we actually implement any of these.

	(-[NSCalendarDate daysSinceDate:]): Convenience method in category; will
	probably move to another file soon.

	* WebKit.pbproj/project.pbxproj: Updated for new files




    Made history implementation use IFWebHistory; removed temporary hackery.
    (Actually it was mostly just moved to IFWebHistory, but now it\'s hiding
    behind a legitimate API.)

	* GlobalHistory.m:
	(+[GlobalHistory testData]): Removed this temporary hackery.

	(-[GlobalHistory outlineView:child:ofItem:]),
	(-[GlobalHistory outlineView:isItemExpandable:]),
	(-[GlobalHistory outlineView:numberOfChildrenOfItem:]),
	(-[GlobalHistory outlineView:objectValueForTableColumn:byItem:]):
	Replaced hacky implementation with use of new IFWebHistory API.


git-svn-id: svn://svn.chromium.org/blink/trunk@642 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-19 01:18:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/28cdbe9d9a7ac1d3e7afea26245cf9eb46b0a518');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hs01s28yba22jc', 1, e'Fixed snafu.


git-svn-id: svn://svn.chromium.org/blink/trunk@641 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-19 01:08:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c76a005c4d50936bca52dae07c7beca858db4858');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600ht01s2scc7vc5d', 1, e'2002-02-18  Kenneth Kocienda  <kocienda@apple.com>

        Changed build style to Development

        * build-style.txt:


git-svn-id: svn://svn.chromium.org/blink/trunk@640 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-19 00:31:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dc620169d4f458070923bc5eccf35cd814105bd2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hu01s26ap39l6a', 1, e'2002-02-18  Kenneth Kocienda  <kocienda@apple.com>

        Fixed breakge that came up when project file merged.

        * WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@639 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-19 00:28:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/258fe3a82a8832a7daaa53b855f0aef129b594d8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hv01s2kmgby7z3', 1, e'2002-02-18  Kenneth Kocienda  <kocienda@apple.com>

        Changes to support building standalone Alexander with Frameworks
        and libraries contained inside the app package.

        * Makefile.am:
        * Tests/Makefile.am:
        * build-style.txt:
        * configure.in:

       * WebBrowser/Makefile.am:
        * WebBrowser.pbproj/project.pbxproj:

        * WebFoundation/Makefile.am:
        * WebFoundation.pbproj/project.pbxproj:

        * WebKit/Makefile.am:
        * WebKit.pbproj/kocienda.pbxuser:
        * WebKit.pbproj/project.pbxproj:

         * WebCore/src/Makefile.am:
        * WebCore/src/kwq/KWQKHTMLPart.mm: (KHTMLPart::khtmlMouseMoveEvent):
        * WebCore/src/kwq/KWQView.mm: (-[KWQHTMLView mouseUp:]), (-[KWQHTMLView mouseDown:]):
        * WebCore/src/kwq/kde/_kurl.cpp: (KURL::htmlRef):


git-svn-id: svn://svn.chromium.org/blink/trunk@638 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-19 00:26:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8ef637f212c8b6d81f8f874124700d0317b9d052');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hw01s2ltfektnv', 1, e'Fixed warning.


git-svn-id: svn://svn.chromium.org/blink/trunk@637 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-18 22:57:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cd818b5637827f5eb6303ca101c50463f3f82d8a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hx01s2ctcxpu06', 1, e'Fixed to  preferences dialog problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@636 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-18 22:22:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/27f28642cda0a447a1dc42c34655d29268ad4a62');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hy01s2hebrie1g', 1, e'Performance measurement.


git-svn-id: svn://svn.chromium.org/blink/trunk@635 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-18 21:21:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3cd2030c0e705c83848346b10f2ba43dabf4c621');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600hz01s2wgqt0oe5', 1, e'Performance stuff.


git-svn-id: svn://svn.chromium.org/blink/trunk@634 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-18 21:21:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3565767320e620601ba25d252613c110104f2d52');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600i001s2pgzx8ize', 1, e'Fixed simple bug that broke forms.


git-svn-id: svn://svn.chromium.org/blink/trunk@633 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-18 19:37:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0bf8a4c21ba388fcf4c1da0d25b81108479bbbf6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600i101s2pk3n0wba', 1, e'Top level:
	* borrowed-classes.txt, configure.in: Stop borring KURL.

	Gajillions of test cases for KURL:

	* Tests/Makefile.am:
	* Tests/kde/.cvsignore:
	* Tests/kde/Makefile.am:
	* Tests/kde/kurl-test.chk:
	* Tests/kde/kurl-test.cpp: (testURL), (main):
	* Tests/kde/objc-dummy.mm: (objective_c_hack):
	* Tests/test.list:
WebCore:
	Reimplement KURL in terms of CFURL (many workarounds needed to
	account for differing semantics).

	* src/kwq/kdecore/kurl.h:
	* src/kwq/KWQKURL.mm: (KURL::KWQKURLPrivate::KWQKURLPrivate),
	(KURL::KWQKURLPrivate::~KWQKURLPrivate), (KURL::KWQKURLPrivate::init),
	(KURL::KWQKURLPrivate::makeRef), (CFStringToQString), (escapeQString),
	(pathEndsWithSlash), (KWQCFURLCopyEscapedPath),
	(KURL::KWQKURLPrivate::decompose), (KURL::KWQKURLPrivate::compose), (KURL::KURL),
	(KURL::~KURL), (KURL::isEmpty), (KURL::isMalformed), (KURL::hasPath),
	(KURL::url), (KURL::protocol), (KURL::host), (KURL::port), (KURL::pass),
	(KURL::user), (KURL::ref), (KURL::query), (KURL::path), (KURL::setProtocol),
	(KURL::setHost), (KURL::setPort), (KURL::setRef), (KURL::setQuery),
	(KURL::setPath), (KURL::prettyURL), (KURL::operator=), (KURL::decode_string),
	(KURL::copyOnWrite):
	* src/kwq/Makefile.am: Add new file to build.

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::begin,
	KHTMLPart::submitForm): Don\'t

	Minor tweaks to make it all build:

	* src/kwq/kde/_kurl.cpp:
	* src/kwq/qt/_qurl.cpp:
	* src/kwq/qt/_qurl.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@632 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-17 07:17:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/12e7f57c5497c1204e2555c69a9bd612eaaf6bc5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvat600i201s2gl3d52kw', 1, e'Notes to self.


git-svn-id: svn://svn.chromium.org/blink/trunk@631 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-02-16 21:44:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/240b05b5b1a04f70a81d589182604f73b3d3e7b6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i301s2zllghmy4', 1, e'Fixed special case of retain count being -1.


git-svn-id: svn://svn.chromium.org/blink/trunk@693 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-05 20:30:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fb5274ac64993478a6e3708c43b06bf95095571e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i401s28mwrs7dg', 1, e'- Now passing DOCBASE to the Java plug-in
- Enabled the Java preference
- Made \'alex\' Alexander\'s signature

Modified Files:
	WebBrowser/WebBrowser.pbproj/project.pbxproj
	WebCore/src/kwq/KWQKHTMLPart.mm
	WebCore/src/kwq/WCJavaAppletWidget.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@692 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-05 19:52:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4a607a519a1de27289d367eda1a709023b3dd55b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i501s2dd3myu4k', 1, e'	* WebView.subproj/IFWebDataSource.mm: (+[IFWebDataSource initialize]):
	Changed default font sizes to match scheme used in Alexander. There are
	some serious wackinesses with KDE engine font size handling; if and when
	we address those we might revisit these default sizes.

    Made font size preference in Alexander work.

	* Defaults.plist: Added font size defaults that match those in WebKit (since
	Alexander Preferences window may use these before WebKit is initialized)
	* PreferenceKeys.h: Removed old single-size default; added key for size array.

	* Preferences.subproj/TextPreferences.m:
	(-[TextPreferences mediumFontSize]): New convenience method to get the size
	that\'s displayed in the Preferences UI.
	(-[TextPreferences setMediumFontSize:]): New method to convert the user\'s
	chosen size into a size array, and store that array in user defaults.
	(-[TextPreferences updateFontSampleField:]),
	(-[TextPreferences changeFont:]): Use new API.


git-svn-id: svn://svn.chromium.org/blink/trunk@691 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-05 18:40:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d6d3cb0eb831231833eaabf0839f559fc5d865c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i601s2zdfpf59w', 1, e'File needed to isolate web data source allocation from web core.


git-svn-id: svn://svn.chromium.org/blink/trunk@690 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-05 18:40:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d68c288c16d1501063c7360f7484bc9794a2b6be');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i701s2xknvpich', 1, e'WebFoundation/
	First cut at HTTP Authentication support and API. This fixes Radar
	2858993
	(HTTP Authentication challenges are not handled). However, there
	are still many loose ends indicated by all the FIXMEs in the code.

	New IFAuthenticationManager class and related classes:

	* AuthenticationManager.subproj/IFAuthenticationHandler.h:
	* AuthenticationManager.subproj/IFAuthenticationHandlerDispatcher.h:
	* AuthenticationManager.subproj/IFAuthenticationHandlerDispatcher.m:
	(dispatchToHandler), (dispatcherCopyDescription),
	(-[IFAuthenticationHandlerDispatcher _dispatchToHandler]),
	(-[IFAuthenticationHandlerDispatcher initWithAuthenticationHandler:]),
	(-[IFAuthenticationHandlerDispatcher dealloc]),
	(-[IFAuthenticationHandlerDispatcher authenticate:]),
	(-[IFAuthenticationHandlerDispatcher hasHandler:]):
	* AuthenticationManager.subproj/IFAuthenticationManager.h:
	* AuthenticationManager.subproj/IFAuthenticationManager.m:
	(-[IFAuthenticationManagerPrivate init]), (-[IFAuthenticationManagerPrivate
	dealloc]), (-[IFAuthenticationManager dealloc]), (-[IFAuthenticationManager
	init]), (+[IFAuthenticationManager sharedAuthenticationManager]),
	(-[IFAuthenticationManager addAuthenticationHandler:]),
	(-[IFAuthenticationManager removeAuthenticationHandler:]),
	(IFNSURLRemoveAnythingAfterPath), (IFNSURLCanonicalRoot), (IFNSURLGetParent),
	(-[IFAuthenticationManager realmForURL:]), (-[IFAuthenticationManager
	realmKeyWithRealm:withURL:]), (-[IFAuthenticationManager
	addCredentialsToInitialHTTPRequest:]), (-[IFAuthenticationManager
	checkForAuthenticationFailureInHTTPResponse:withURL:]),
	(-[IFAuthenticationManager invokeHandlersWithURL:realm:]),
	(-[IFAuthenticationManager
	addCredentialsToRetryHTTPRequest:afterFailureResponse:]):
	* AuthenticationManager.subproj/IFAuthenticationManagerPrivate.h:
	* AuthenticationManager.subproj/IFAuthenticationRequest.h:
	* AuthenticationManager.subproj/IFAuthenticationRequest.m:
	(-[IFAuthenticationRequest
	initWithURL:realm:username:passwordSentInClear:previousFailures:]),
	(+[IFAuthenticationRequest
	authenticationRequestWithURL:realm:username:passwordSentInClear:previousFailures:
	]), (-[IFAuthenticationRequest dealloc]), (-[IFAuthenticationRequest url]),
	(-[IFAuthenticationRequest realm]), (-[IFAuthenticationRequest username]),
	(-[IFAuthenticationRequest willPasswordBeSentInClear]),
	(-[IFAuthenticationRequest previousFailures]):
	* AuthenticationManager.subproj/IFAuthenticationResult.h:
	* AuthenticationManager.subproj/IFAuthenticationResult.m:
	(-[IFAuthenticationResult initWithUsername:password:]), (+[IFAuthenticationResult
	authenticationResultWithUsername:password:]), (-[IFAuthenticationResult
	dealloc]), (-[IFAuthenticationResult username]), (-[IFAuthenticationResult
	password]):

	Hook authentication into the loader:

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
	initWithURLLoad:]), (-[IFHTTPURLProtocolHandler dealloc]),
	(-[IFHTTPURLProtocolHandler retryAfterAuthenticationFailure:]),
	(-[IFHTTPURLProtocolHandler createHTTPRequest]), (-[IFHTTPURLProtocolHandler
	handleReadStreamEvent:event:]), (-[IFHTTPURLProtocolHandler
	performHTTPHeaderRead:]):

	Added a few more useful extensions:

	* Misc.subproj/IFNSArrayExtensions.h:
	* Misc.subproj/IFNSArrayExtensions.m: (-[NSArray
	indexOfObjectSatisfyingPredicate:withObject:]):
	* Misc.subproj/IFNSStringExtensions.h:
	* Misc.subproj/IFNSStringExtensions.m: (-[NSString
	parseAsKeyValuePairHandleQuotes:]), (-[NSString hasSubstring:atIndex:]),
	(-[NSString encodeBase64]):
	* Misc.subproj/IFNSURLExtensions.h:
	* Misc.subproj/IFNSURLExtensions.m: (+[NSURL
	URLWithScheme:user:password:host:port:path:parameter:query:fragment:]):

	* WebFoundation.pbproj/project.pbxproj: Build updates.

	* CacheLoader.subproj/IFFileURLProtocolHandler.m: (-[IFFileURLProtocolHandler
	canCacheResourceData]): Added a random FIXME.
WebKit/
	Removed references to IFAuthenticationHandler, since that protocol
	now lives in WebFoundation and it\'s no longer quite appropriate to
	include as part of a controller.

	* WebView.subproj/IFBaseWebController.mm:
	* WebView.subproj/IFWebController.h:
WebBrowser/
	Added authentication support:

	* AppController.m: (-[AppController awakeFromNib]): Install the
	authentication handler.

	Implementation of Alexander\'s authentication handler, which
	currently prompts the user with a modal dialog. UI still needs
	fine-tuning.

	* AuthenticationHandler.h:
	* AuthenticationHandler.m: (+[AuthenticationHandler install]),
	(-[AuthenticationHandler init]), (-[AuthenticationHandler dealloc]),
	(-[AuthenticationHandler authenticate:]), (-[AuthenticationHandler cancel:]),
	(-[AuthenticationHandler logIn:]), (-[AuthenticationHandler loadNib]),
	(-[AuthenticationHandler showAuthenticationPanel]):

	* AuthenticationPanel.nib: UI for the authentication panel.

	* BrowserDocument.m: Added newline at end of file.


git-svn-id: svn://svn.chromium.org/blink/trunk@689 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-05 14:03:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/83c3148003c4ea93e92d8d84a7c528f808adeca4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i801s20etg5iwa', 1, e'        Changes to support \'provisional\' data sources.
        API changes to IFBaseWebController, removed redundant methods.


git-svn-id: svn://svn.chromium.org/blink/trunk@688 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-05 02:01:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/51cf697905327b6a3a46e97ba874e822914601ed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00i901s2pz0wbnd3', 1, e'	Changed default fonts.

	* WebView.subproj/IFWebDataSource.mm:
	(+[IFWebDataSource initialize]): Changed default fonts to ones
	that actually exist (this was listing "Times-Roman" where it
	meant either "Times" or "Times New Roman"). I\'m about to check
	in working font preferences, so it won\'t matter too much if you
	don\'t like the defaults (although we should of course make sure
	that the defaults are sensible, which I think they are).

    Made font preferences work (though not font size preferences; that is next).
    Various font-related tweaking.

	* AppController.m: (+[AppController initialize]):
	Added NSLog in case where Defaults.plist couldn\'t be parsed as a dictionary;
	this can be caused by typos or cut-and-paste errors and is often difficult
	to notice.

	* BrowserDocument.m: (-[BrowserDocument changeFont:]),
	* LocationFieldEditor.m: (-[LocationFieldEditor changeFont:]):
	Pass changeFont: messages to the preferences window, so the font panel keeps
	working when you bring a browser window to the front.

	* Defaults.plist:
	* PreferenceKeys.h:
	Removed values for WebKit preferences, since the default values for those
	are stored in WebKit. Removed size-per-font defaults since at least for
	now there will be a single font size for all fonts. Added default for
	"medium font size", which will be used later to construct the array of
	font sizes WebKit wants.

	* Preferences.subproj/TextPreferences.m:

	(-[TextPreferences updateFontSampleField:]): use same sizeKey for each
	sample; use localizedNameForFamily instead of fontName for displayed text;
	get font from chosen family name with standard weight so sample field won\'t
	show typeface that WebKit won\'t use.

	(-[TextPreferences updateFontSampleFields]):
	New method, calls updateFontSampleField on each field.

	(-[TextPreferences chooseFont:]): New method, bottleneck for the three
	font-choosing methods;

	(-[TextPreferences chooseSerifFont:]),
	(-[TextPreferences chooseSansSerifFont:]),
	(-[TextPreferences chooseMonospacedFont:]):
	Call chooseFont: instead of	duplicating code.

	(-[TextPreferences changeFont:]): use same sizeKey for all fonts; update
	all sample fields after change since size changes affect all fonts; store
	familyName instead of fontName.

	(-[TextPreferences takeStandardFontChoiceFrom:]): use same sizeKey for all fonts.

	(-[TextPreferences initializeFromDefaults]): Call updateFontSampleFields.

	(-[TextPreferences moduleWillBeRemoved]): Close the font panel when the
	text preferences pane is no longer showing.

	* Preferences.subproj/WBPreferences.m: (-[WBPreferences windowWillClose:]):
	Call moduleWillBeRemoved on current module.


git-svn-id: svn://svn.chromium.org/blink/trunk@687 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-04 23:09:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6508443e65a0dbee5dbf8fed5e926279c3f78c52');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ia01s2pewoezb6', 1, e'	* WebView.subproj/IFWebDataSource.mm: (+[IFWebDataSource initialize]):
	Reverted default fonts to what they were before I accidentally
	checked in some debugging changes.


git-svn-id: svn://svn.chromium.org/blink/trunk@686 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-04 22:20:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5aff7fb3cd20145af6088c608935e217da8137c0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ib01s2mv9791vi', 1, e'- Now, no stream is created when there is no URL passed to IFPluginView. This is done for the Java plug-in since it handles its own downloading/caching.
- IFPluginView can now handle nil arguments. This is for full-page non-embedded plug-ins.


git-svn-id: svn://svn.chromium.org/blink/trunk@685 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-04 21:22:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/85aea632f4c72002d60dadf38fcf6d71ae19cf9e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00if01s264wmhhik', 1, e'First implementation of WCJavaAppletWidget.
Removed unecessary items from plug-in initialization prototypes.
Added a method getPluginWithFilename to WCPluginDataase to find Java.plugin.

Modified Files:
	WebBrowser/Debug/DebugBookmarks.plist
	WebCore/src/kdelibs/khtml/rendering/render_applet.cpp
	WebCore/src/kwq/KWQKHTMLPart.mm WebCore/src/kwq/Makefile.am
	WebCore/src/kwq/WCPlugin.mm WebCore/src/kwq/WCPluginDatabase.h
	WebCore/src/kwq/WCPluginDatabase.mm
	WebCore/src/kwq/WCPluginWidget.h
	WebCore/src/kwq/WCPluginWidget.mm
	WebKit/Plugins.subproj/IFPluginView.h
	WebKit/Plugins.subproj/IFPluginView.mm
Added Files:
	WebCore/src/kwq/WCJavaAppletWidget.h
	WebCore/src/kwq/WCJavaAppletWidget.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@681 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-01 22:14:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/efde208c7f8eb0d201dcdfd6ba08be145c919a58');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ig01s2hyqjy4yj', 1, e'        Fixed a potentially large leak in frames.  View associated w/
        frame was not being released.

        Added scaffolding for correct frame by frame load complete check.

        Moved private IFWebBaseController method implementations to
        IFWebBaseControllerPrivate.mm.


git-svn-id: svn://svn.chromium.org/blink/trunk@680 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-01 19:59:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/81142c538fd134faddde0ceb966c2da0a21fb962');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ih01s28vesnez9', 1, e'Finished up progress notifications for main document.


git-svn-id: svn://svn.chromium.org/blink/trunk@679 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-01 02:37:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7abd15888c31bd2d49e865dbf4ae551561131ec1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ii01s2jsobkw75', 1, e'	Changed font preferences wiring so that we\'re actually setting WebKit defaults
	where they exist. Unfortunately this doesn\'t change the displayed font, due
	to a familyname-vs-fontname discrepancy that we\'ll have to work out a solution
	for.

	Made the "Empty Cache" and "Clear History" buttons in Storage Preferences work.

	* Defaults.plist:
	* PreferenceKeys.h: changed and added some default strings.

	* Preferences.subproj/StoragePreferences.m:
	(-[StoragePreferences historyDiskUseString]),
	(-[StoragePreferences cacheDiskUseString]): Stop returning a pretend string,
	return "<unknknown>" instead.
	(-[StoragePreferences clearCache:]): Implement using IFURLLoadManager
	(-[StoragePreferences clearHistory:]): Implement using IFWebHistory

	* Preferences.subproj/TextPreferences.h:
	* Preferences.subproj/TextPreferences.m:
	(-[TextPreferences changeFont:]),
	(-[TextPreferences takeStandardFontChoiceFrom:]),
	(-[TextPreferences initializeFromDefaults]):
	Wire up "default font" choice and use new WebKit-style keys where appropriate

    * Preferences.subproj/TextPreferences.nib: Wired up the default font menu.


git-svn-id: svn://svn.chromium.org/blink/trunk@678 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-01 00:37:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b9ebf27838f9e91db1cea871fdaacdbb5b0e3a50');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ij01s2kre426i2', 1, e'2002-02-28  Ken Kocienda  <kocienda@pobox.com>

        Changes focused on fixing this bug:

        Radar 2869449 (Pages do not fully render)

        This is primarily a bug in the no-copy data object. It was freeing
        bytes earlier than it should have been when it was asked to join all
        its bytes together for writing to the disk cache.

        In the course of doing this work, I also made quite a few changes in the IFURLHandle
        and IFURLHandleLoadManager interaction.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        beginLoadInBackground]), (-[IFHTTPURLProtocolHandler endLoadInBackground]):
        * CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandle cancelLoadInBackground]),
        (-[IFURLHandle loadInForeground:]), (-[IFURLHandle addClient:]), (-[IFURLHandle
        removeClient:]), (-[IFURLHandle backgroundLoadDidBegin]), (-[IFURLHandle
        didLoadData:]), (-[IFURLHandle backgroundLoadComplete]), (-[IFURLHandle
        backgroundLoadFailedWithResultCode:]), (-[IFURLHandle
        notifyClientsBackgroundLoadCancelled]), (-[IFURLHandle
        notifyClientsBackgroundLoadDidBegin]), (-[IFURLHandle notifyClientsDidLoadData]),
        (-[IFURLHandle notifyClientsBackgroundLoadComplete]), (-[IFURLHandle
        notifyClientsBackgroundLoadFailed]):
        * CacheLoader.subproj/IFURLLoad.h:
        * CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad flags]), (-[IFURLLoad
        succeeded]), (-[IFURLLoad failedWithResultCode:]), (-[IFURLLoad
        canCacheResourceData]), (-[IFURLLoad beginOriginLoad]), (-[IFURLLoad
        didBeginLoading]), (-[IFURLLoad cleanup]):
        * CacheLoader.subproj/IFURLLoadManager.m: (+[IFURLLoadManager initialize]),
        (+[IFURLLoadManager sharedManager]), (-[IFURLLoadManager objectForURL:]),
        (-[IFURLLoadManager setObject:forURL:attributes:expiry:]), (-[IFURLLoadManager
        invalidateURL:]), (-[IFURLLoadManager clearAllCaches]), (-[IFURLLoadManager
        initWithDefaultStack]), (-[IFURLLoadManager requestWithURLHandle:]),
        (-[IFURLLoadManager cancelRequestWithURLHandle:]), (-[IFURLLoadManager
        cancelAllRequestsWithURL:]), (-[IFURLLoadManager cancelAllRequestsInGroup:]),
        (-[IFURLLoadManager caches]), (-[IFURLLoadManager loadDidFinish:]):
        * CacheLoader.subproj/IFURLLoadManagerPrivate.h:
        * CacheLoader.subproj/IFURLLoadPrivate.h:
        * CacheLoader.subproj/IFURLProtocolHandler.h:
        * CacheLoader.subproj/IFURLProtocolHandler.m: (-[IFURLProtocolHandler
        canCacheResourceData]):
        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase setObject:forKey:]):
        * Misc.subproj/IFMutableData.h:
        * Misc.subproj/IFMutableDataPrivate.m: (-[IFByteRange copyWithZone:]),
        (-[IFMutableData joinBlocks]):
        * Misc.subproj/IFMutableDataPrivate.m: (-[IFByteRange copyWithZone:]),
        (-[IFMutableData joinBlocks]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@677 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-28 19:05:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/05515a074aa0d4b115b984a655e8152e15289b0c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ik01s2harjdj87', 1, e'Fixed a Jaguar crasher. Some differences in the way strmcp behaves


git-svn-id: svn://svn.chromium.org/blink/trunk@676 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-28 02:25:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7f5b89f6f5d3479457ec43b4d730defae8c7aade');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00il01s2gk4b0tao', 1, e'2002-02-27  Kenneth Kocienda  <kocienda@apple.com>

        I have changed the way that WebCore is glued to WebFoundation and WebKit.
        If you used or relied upon any code in the following files, you should
        now use the IF* equivalents straight up.

        - Labyrinth/WebCore/include/WCBackForwardList.h
        - Labyrinth/WebCore/include/WCURICache.h
        - Labyrinth/WebCore/include/WCURICacheData.h
        - Labyrinth/WebCore/include/WCURIEntry.h
        - Labyrinth/WebCore/include/WCURIEntry.h

        All changes in this commit are related to making dependant code work with the new convention.

	WebKit:
        * History.subproj/IFURIEntry.h:
        * History.subproj/IFURIEntry.m:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        newStream:mimeType:notifyData:]), (-[IFPluginView
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFPluginView
        IFURLHandleResourceDidFinishLoading:data:]), (-[IFPluginView
        IFURLHandleResourceDidBeginLoading:]), (-[IFPluginView
        IFURLHandleResourceDidCancelLoading:]), (-[IFPluginView
        IFURLHandle:resourceDidFailLoadingWithResult:]):
        * WebKit.pbproj/kocienda.pbxuser:
        * WebKit.pbproj/project.pbxproj:

	WebFoundation:
        * CacheLoader.subproj/IFURLCacheLoaderConstants.h:
        * CacheLoader.subproj/IFURLCacheLoaderConstants.m:
        * CacheLoader.subproj/IFURLCacheObject.m: (-[IFURLCacheObject initWithCoder:]),
        (-[IFURLCacheObject encodeWithCoder:]):
        * WebFoundation.pbproj/project.pbxproj:

	WebCore:
        * include/WCBackForwardList.h:
        * include/WCURICache.h:
        * include/WCURICacheData.h:
        * include/WCURIEntry.h:
        * include/WCURLHandle.h:
        * src/kwq/KWQKHTMLPart.h:
        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
        IFURLHandleResourceDidBeginLoading:]), (-[KHTMLPartLoadClient
        IFURLHandleResourceDidCancelLoading:]), (-[KHTMLPartLoadClient
        IFURLHandleResourceDidFinishLoading:data:]), (-[KHTMLPartLoadClient
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[KHTMLPartLoadClient
        IFURLHandle:resourceDidFailLoadingWithResult:]), (KHTMLPart::slotData),
        (KHTMLPart::openURL):
        * src/kwq/KWQKjobclasses.mm:
        * src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]),
        (-[URLLoadClient IFURLHandleResourceDidCancelLoading:]), (-[URLLoadClient
        IFURLHandleResourceDidFinishLoading:data:]), (-[URLLoadClient
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[URLLoadClient
        IFURLHandle:resourceDidFailLoadingWithResult:]):
        * src/kwq/Makefile.am:
        * src/kwq/kio/jobclasses.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@675 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-02-27 19:47:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0e771dd1c207d55d1db0139acb5801284c7ce57c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00iv01s21wlmprje', 1, e'WebFoundation:
	Fix prebinding:

	* WebFoundation.pbproj/project.pbxproj: Set first segment address
	to 0x2000000 to avoid colliding with apps. Need to have permanent
	value assigned at some point.
WebCore:
	Fix prebinding:

	* src/Makefile.am: Enable prebinding, set first segment address to
	0x2200000 to avoid colliding with apps or our other
	frameworks. Change other link flags to support prebinding.

	Set up some hacks to avoid link-time dependency on
	WebKit. Prebinding is incompatible with - undefined suppress, so
	we can\'t have WebCore depend on symbols provided by WebKit any
	more:

	* src/kwq/KWQKHTMLPart.h:
	* src/kwq/KWQKloader.mm: (WCSetIFLoadProgressMakeFunc), (-[URLLoadClient
	WCURLHandleResourceDidFinishLoading:data:userData:]), (-[URLLoadClient
	WCURLHandle:resourceDataDidBecomeAvailable:userData:]):
	* src/kwq/WCPluginWidget.h:
	* src/kwq/WCPluginWidget.mm: (WCSetIFPluginMakeFunc),
	(WCPluginWidget::WCPluginWidget):
WebKit:
	Fix prebinding:

	* WebKit.pbproj/project.pbxproj: Set first segment address
	0x4000000 to avoid colliding with apps or our other frameworks.

	Set up some hacks to avoid link-time dependency on
	WebKit. Prebinding is incompatible with - undefined suppress, so
	we can\'t have WebCore depend on symbols provided by WebKit any
	more:

	* Plugins.subproj/IFPluginView.mm: (IFPluginMake), (+[IFPluginView load]),
	(startupVolumeName):
	* WebView.subproj/IFBaseWebController.mm: (IFLoadProgressMake), (+[IFLoadProgress
	load]):


git-svn-id: svn://svn.chromium.org/blink/trunk@664 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-23 07:21:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/59f82e2000deafa01fb55ff341c44f20d5e6f994');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00im01s2r9xei7d7', 1, e'Top level:
	Stop borrowing QDir and QFile.

	* borrowed-classes.txt: Turn off all remaining borrowed classes.

	New functionality to set up a standard filesystem in /tmp for testing.

	* Tests/libiftest/IFTestDirectory.c: (IFSetUpTestDirectory):
	* Tests/libiftest/IFTestDirectory.h:
	* Tests/libiftest/Makefile.am:
	* Tests/libiftest/testdir.tar.gz:

	 Add new tests, also alphabetize all the Qt tests.

	* Tests/qt/Makefile.am:
	* Tests/qt/qdir-test.chk:
	* Tests/qt/qdir-test.cpp: (testDir), (main):
	* Tests/qt/qfile-test.chk:
	* Tests/qt/qfile-test.cpp: (ReadAndPrintMD5), (main):
	* Tests/test.list:
WebCore:
	Replace QDir and QFile with clean-room implementations. Add glob
	support ot QRegExp reimplementation.

	* src/kwq/KWQDir.mm: (QDir::KWQDirPrivate::KWQDirPrivate),
	(QDir::KWQDirPrivate::~KWQDirPrivate), (QDir::QDir), (QDir::~QDir),
	(QDir::absPath), (QDir::absFilePath), (QDir::cdUp), (QDir::exists),
	(QDir::entryList), (QDir::operator=), (QDir::swap):
	* src/kwq/KWQFile.mm: (QFile::KWQFilePrivate::KWQFilePrivate),
	(QFile::KWQFilePrivate::~KWQFilePrivate), (QFile::QFile), (QFile::~QFile),
	(QFile::exists), (QFile::open), (QFile::close), (QFile::readBlock),
	(QFile::size):
	* src/kwq/KWQRegExp.mm: (QRegExp::KWQRegExpPrivate::KWQRegExpPrivate),
	(RegExpFromGlob), (QRegExp::KWQRegExpPrivate::compile), (QRegExp::QRegExp):
	* src/kwq/KWQStrList.h:
	* src/kwq/Makefile.am:
	* src/kwq/qt/_qdir.h:
	* src/kwq/qt/_qfile.h:
	* src/kwq/qt/_qfileinfo.h:
	* src/kwq/qt/qdir.h:
	* src/kwq/qt/qfile.h:
	* src/kwq/qt/qiodevice.h:
	* src/kwq/qt/qregexp.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@674 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-27 11:38:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/74ef30a634435b60920a45e44a5ed02e05af8ba8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00in01s2mxyimz8f', 1, e'Added a defaults key for enabling Java. Off by default for now.


git-svn-id: svn://svn.chromium.org/blink/trunk@673 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-27 01:27:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/799139030fb0e443ed5d9be12dc5fdae7122f2dc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00io01s2mivpfy3c', 1, e'	* History.subproj/IFURIEntry.m: (-[IFURIEntry dealloc]):
	Added missing dealloc method that \'leaks\' found.

	* History.subproj/IFURIList.m: (-[IFURIList dealloc]):
	Added missing [super dealloc] call that \'leaks\' found.

	* BrowserWindow.m:
	(-[BrowserWindow toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:]):
	Removed obsolete comment.

	* LoadProgressMonitor.m: (-[LoadProgressMonitor dealloc]):
	* SearchChannel.m: (-[SearchChannel dealloc]):
	Added missing [super dealloc] calls that \'leaks\' found.


git-svn-id: svn://svn.chromium.org/blink/trunk@672 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-02-26 23:24:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/96397ad83b957fa0a8e61ee4458b48cfd5d58d36');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ip01s2zsieq677', 1, e'Now sending complete URL\'s to the plug-in classes - woops


git-svn-id: svn://svn.chromium.org/blink/trunk@671 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-26 23:22:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/198b2d22c9c0d6fbbbf196f5ff4abb6050422eef');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00iq01s2vvpj6ksz', 1, e'Added support for mach-o bundled plugins.


git-svn-id: svn://svn.chromium.org/blink/trunk@670 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-26 22:44:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d933785c8feba9d7817057175bc0ff4a224e95b6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00ir01s2wslq7ngv', 1, e'Top level:
	* Tests/qt/qstringlist-test.cpp: (main): Clean up a problem that
	was causing a bogus test failure.
WebCore:
	Fix two significant memory leaks in QList found by our automated
	leak-checking code.

	* src/kwq/KWQListImpl.mm: (KWQListNode::~KWQListNode),
	(KWQListImpl::KWQListPrivate::copyList),
	(KWQListImpl::KWQListPrivate::~KWQListPrivate), (KWQListImpl::sort):

	Fix a tiny bug tweaked by the new regexp code - we need to flush
	the cache after calling out to QRegExp::match because it might
	make calls on the string which create a cache. Caught by the
	regression tests.

	* src/kwq/KWQString.mm: (QString::replace):


git-svn-id: svn://svn.chromium.org/blink/trunk@668 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-26 02:04:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/78441be84a6026f056d51de87d814f762ffe7a03');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00is01s2wy4o4aoj', 1, e'Added support for multiple plug-ins per page


git-svn-id: svn://svn.chromium.org/blink/trunk@667 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-26 02:01:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/254cbb59fef27313346d9f965d25291f9a7cca80');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00it01s2qvhxhvpi', 1, e'Top level:
	Stop borrowing QRegExp and QValueList.

	* borrowed-classes.txt:

	Added more test cases for QRegExp and QValueList.

	* Tests/qt/qregexp-test.chk:
	* Tests/qt/qregexp-test.cpp: (main):
	* Tests/qt/qstringlist-test.cpp: (main):
	* Tests/qt/qvaluelist-test.chk:
	* Tests/qt/qvaluelist-test.cpp: (main):
WebCore:
	Reimplemented QRegExp in terms of POSIX regexp facilities. This
	will only support Latin1, however, it won\'t support all languages.

	* src/kwq/qt/qregexp.h:
	* src/kwq/KWQRegExp.mm: (QRegExp::KWQRegExpPrivate::KWQRegExpPrivate),
	(QRegExp::KWQRegExpPrivate::compile),
	(QRegExp::KWQRegExpPrivate::~KWQRegExpPrivate), (QRegExp::QRegExp),
	(QRegExp::~QRegExp), (QRegExp::operator=), (QRegExp::pattern), (QRegExp::match):

	Reimplement QValueList as a doubly-linked list, using a generic
	implementation class and a templatized facade.

	* src/kwq/qt/qvaluelist.h:
	* src/kwq/KWQValueListImpl.h:
	* src/kwq/KWQValueListImpl.mm: (KWQValueListNodeImpl::KWQValueListNodeImpl),
	(KWQValueListNodeImpl::~KWQValueListNodeImpl),
	(KWQValueListIteratorImpl::KWQValueListIteratorImpl),
	(KWQValueListIteratorImpl::~KWQValueListIteratorImpl),
	(KWQValueListIteratorImpl::operator=), (KWQValueListIteratorImpl::operator==),
	(KWQValueListIteratorImpl::operator!=), (KWQValueListIteratorImpl::node),
	(KWQValueListIteratorImpl::operator++), (KWQValueListIteratorImpl::operator--),
	(KWQValueListImpl::KWQValueListPrivate::KWQValueListPrivate),
	(KWQValueListImpl::KWQValueListPrivate::~KWQValueListPrivate),
	(KWQValueListImpl::KWQValueListPrivate::copyList),
	(KWQValueListImpl::KWQValueListPrivate::deleteList),
	(KWQValueListImpl::KWQValueListImpl), (KWQValueListImpl::~KWQValueListImpl),
	(KWQValueListImpl::clear), (KWQValueListImpl::count),
	(KWQValueListImpl::isEmpty), (KWQValueListImpl::appendNode),
	(KWQValueListImpl::prependNode), (KWQValueListImpl::removeEqualNodes),
	(KWQValueListImpl::containsEqualNodes), (KWQValueListImpl::removeIterator),
	(KWQValueListImpl::fromLast), (KWQValueListImpl::firstNode),
	(KWQValueListImpl::lastNode), (KWQValueListImpl::begin), (KWQValueListImpl::end),
	(KWQValueListImpl::nodeAt), (KWQValueListImpl::operator=),
	(KWQValueListImpl::copyOnWrite):
	* src/kwq/Makefile.am:

	* src/kwq/kio/netaccess.h: Don\'t declare private copy constructor
	- this class needs to be copyable to be stored in a QValueList!

	Hack these scripts a bit so the large tables they generate are
	constant data.

	* src/kwq/make-charset-table.pl:
	* src/kdelibs/khtml/css/makeprop:
	* src/kdelibs/khtml/css/makevalues:
	* src/kdelibs/khtml/misc/makeattrs:
	* src/kdelibs/khtml/misc/maketags:


git-svn-id: svn://svn.chromium.org/blink/trunk@666 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-25 04:11:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/381f36914a74d832dfc4bc5fe2a95f89f6d8672f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00iu01s2epbf9lkt', 1, e'	* src/kwq/WCLoadProgress.h: Add the forgotten WCLoadProgress.h.


git-svn-id: svn://svn.chromium.org/blink/trunk@665 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-02-24 02:52:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c700b5806f124ead5315f01d037840aee64ed7fc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvc9x00iw01s232j4xjhu', 1, e'Now sending null events after first drawRect when the port is valid. This was causing Flash to crash


git-svn-id: svn://svn.chromium.org/blink/trunk@663 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-02-23 00:29:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/40286d2e95fd93a4e143e5926e37bfb430f39a9a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j801s221soup90', 1, e'Added a tracking rect to IFPluginView so that we can send cursor events


git-svn-id: svn://svn.chromium.org/blink/trunk@714 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-07 22:11:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/80da4d08ef3f2ca3b4a4a92c034a5c4dd5e153a5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jr01s23r2r5b1y', 1, e'        * src/kwq/KWQFontMetrics.mm: (QFontMetricsPrivate::getInfo),
        (QFontMetrics::width), (QFontMetrics::_width), (QFontMetrics::boundingRect),
        (QFontMetrics::size): Don\'t make the info object right away, in case the
        metrics object is only used to compute ascent and descent.


git-svn-id: svn://svn.chromium.org/blink/trunk@771 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-18 17:34:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4e393908d56ce33dbdb28e5038d8eb397bb0ed37');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00ix01s2meeu5dx2', 1, e'	Added support for persistent history. Following in the grand footsteps of
	Ken, it currently stores data in /tmp/alexander.history

	* Resources/url_icon.tiff: default IFURIEntry image, moved here from WebBrowser.
	* WebKit.pbproj/project.pbxproj: Updated to add image file.

	* History.subproj/IFURIEntry.m:
	(-[IFURIEntry image]):
	If there\'s no explicit image, return the default one.

	(-[IFURIEntry dictionaryRepresentation]): return a representation suitable
	for saving to an xml file.
	(-[IFURIEntry initFromDictionaryRepresentation:]): init given the representation
	returned from dictionaryRepresentation.

	* History.subproj/IFWebHistory.h:
	* History.subproj/IFWebHistory.m: (-[IFWebHistory saveHistory]):
	Added saveHistory call.

	* History.subproj/IFWebHistoryPrivate.h: added saveHistory call.

	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate arrayRepresentation]): return a representation suitable for
	saving to an xml file.
	(-[IFWebHistoryPrivate historyFilePath]): return location of history on disk.
	(-[IFWebHistoryPrivate loadHistory]): read history from disk.
	(-[IFWebHistoryPrivate saveHistory]): write history to disk.

	(-[IFWebHistoryPrivate init]): call loadHistory
	(-[IFWebHistoryPrivate removeEntryForURLString:]): changed NSLog to WEBKITDEBUG

    Save history before quitting, and associated tweaks.

	* AppController.m:
	(-[AppController awakeFromNib]): register as application delegate
	(-[AppController applicationWillTerminate:]): save history before app terminates

	* BrowserDocument.m:
	(-[BrowserDocument addHistoryEntryForCurrentPage]): Don\'t set an image here;
	IFURIEntry now handles the image (at least for the default case)

	* Resources/Images/url_icon.tiff: Moved this image to WebKit.
	* WebBrowser.pbproj/project.pbxproj: Updated for removed file.


git-svn-id: svn://svn.chromium.org/blink/trunk@727 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-13 03:07:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3ade10933ca445d773d46cb1bc663103b47ec45a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00iy01s2pt358tzp', 1, e'Optimized implementation of compareToLatin1() and find() to not allocate
additional CFString.


git-svn-id: svn://svn.chromium.org/blink/trunk@726 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-13 02:24:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/586d29ad53d84c1435225987fe9cb05e150209d1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00iz01s2vrfx2oav', 1, e'i        Fixed call back ordering problems when an error occurs.
        More twiddling with scroll bars.
Re-implemented QPainter::drawTiledPixmap to use core graphics patterns.  Currently this depends
on SPI.  The performance boost is huge osx.macnn.com draws 40x faster now.


git-svn-id: svn://svn.chromium.org/blink/trunk@725 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-11 22:00:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ba21a94e5aa517aa86598829390ae239eabf2af6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j001s2o478yisz', 1, e'2002-03-09  Ken Kocienda  <kocienda@apple.com>

        Fixed this bug:
        Radar 2859368 (IFURLFileDatabase must set correct permissions when creating files)

        The IFURLFileDatabase now creates directories and files with the correct permissions.

        * Database.subproj/IFURLFileDatabase.m: (+[IFURLFileDatabase initialize]),
        (-[IFURLFileDatabase setObject:forKey:]), (-[IFURLFileDatabase open]):
        * Misc.subproj/IFNSFileManagerExtensions.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@724 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-09 20:59:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/91b17c5e1ceb9eb4cb2abb6f9abc7970a624d086');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j101s2px25eqpy', 1, e'Re-implemented KWQFont to lazily request font from NSFontManager instead of
user converFont:.  I did this after sampling loads of http://www.apple.com/retail/theater
and found that converting fonts was very expensive.

        Fixed scroll bar recursion problems.
Took a long time to find a stupid typo bug in [IFBaseWebController _frameForDataSource:fromFrame:]
that overwrote an input parameter that should been a local variable.  This caused a crash the
second time a page that contained an iframe was loaded.


git-svn-id: svn://svn.chromium.org/blink/trunk@723 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-09 01:25:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/49bb358181ccae9f099f9ba8f3bad433886d4cf3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j201s22iw1e1lp', 1, e'        Instrumentation of the text fragment metrics cache.
        Added _FAST_QSTRING_TO_NSSTRING.


git-svn-id: svn://svn.chromium.org/blink/trunk@720 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-08 20:58:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2889d6b4abd6dab60c4c6848090d17af6ae6fb87');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j301s2xdf595xs', 1, e'	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::openURL), (KHTMLPart::end):
	Changed openURL() and end() messages to use debug levels. You
	can see these by setting your WebKitLogLevel mask to include
	0x00000008

    Changed all use of NSLog to use WebKitDebug stuff instead. You can see all
    of these by setting your WebKitLogLevel mask to include 0x01000000

	* BrowserDocument.m: (-[BrowserDocument saveScrollPosition]), (-[BrowserDocument
	restoreScrollPosition]), (-[BrowserDocument goToURL:withLoadType:]),
	(-[BrowserDocument receivedProgress:forResource:fromDataSource:]),
	(-[BrowserDocument receivedError:forResource:partialProgress:fromDataSource:]),
	(-[BrowserDocument statusTextForDataSource:]), (-[BrowserDocument
	locationWillChangeTo:forFrame:]), (-[BrowserDocument
	locationChangeStartedForFrame:]), (-[BrowserDocument
	locationChangeCommittedForFrame:]), (-[BrowserDocument
	locationChangeDone:forFrame:]), (-[BrowserDocument
	receivedPageTitle:forDataSource:]), (-[BrowserDocument
	serverRedirectTo:forDataSource:]), (-[BrowserDocument
	createFrameNamed:for:inParent:]), (-[BrowserDocument mainFrame]),
	(-[BrowserDocument frameForDataSource:]):

	* WebBrowser.pbproj/project.pbxproj: Moved recently-added files to alpha
	ordered spot in file list.


git-svn-id: svn://svn.chromium.org/blink/trunk@719 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-08 17:06:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/43f253850c4d65883b3e59de9727d470fa55713d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j401s2s5grqy6d', 1, e'	* Misc.subproj/IFError.m: (-[IFError errorDescription]):
	Removed a line of debugging spam. Oops!

    Made an untitled window appear at launch for Jaguar by adding a bogus
    Editor document type.

	* WebBrowser.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@718 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-08 00:50:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d353ef1deb515cd17141b86c5fc2fd19b2a62075');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j501s2muozam9r', 1, e'
        Fixed occasional scroll bar problem in iframes.
        Fixed occasional problem removing scroll bar onb main page.


git-svn-id: svn://svn.chromium.org/blink/trunk@717 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-08 00:44:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/23dfb7ef1c2f2d2c29221190b0b2846d043f09ce');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j601s2bdogupr6', 1, e'	* CacheLoader.subproj/IFURLCacheLoaderConstants.h:
	Fixed two typos in constant names (not used anywhere).

	* WebFoundation.pbproj/project.pbxproj: Jaguar/Puma
	version wars.

	First pass at adding error strings to IFError. They are
	properly localized, but they don\'t include any parameters,
	and the strings haven\'t been made user-friendly.

	* Misc.subproj/IFError.m:
	(+[IFError initialize]): New method, set up a dictionary
	mapping error code to localized error string.
	(-[IFError errorDescription]): Read string from dictionary.

	* English.lproj/IFError.strings: New file, auto-generated
	by the genstrings tool.

	* WebKit.pbproj/project.pbxproj: Removed stray -F /symroots.
	This shouldn\'t have been in there since symroots location is
	no longer hardwired.

	* BrowserDocument.m: (-[BrowserDocument locationChangeDone:forFrame:]):
	Make error message include errorDescription. This is not final UI, have
	no fear. Useful for debugging though.

	* WebBrowser.pbproj/project.pbxproj: Jaguar/Puma version wars


git-svn-id: svn://svn.chromium.org/blink/trunk@716 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-08 00:04:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/739778ac50bba10feff57d9b75c90bdb4bc8e28d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00j901s20maderrs', 1, e'	* src/kwq/kwqdebug.h: New debug level constants, kept in
	synch with WebKitDebug.h

	* src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
	IFURLHandleResourceDidBeginLoading:]), (-[KHTMLPartLoadClient
	IFURLHandleResourceDidCancelLoading:]), (-[KHTMLPartLoadClient
	IFURLHandleResourceDidFinishLoading:data:]), (-[KHTMLPartLoadClient
	IFURLHandle:resourceDataDidBecomeAvailable:]), (-[KHTMLPartLoadClient
	IFURLHandle:resourceDidFailLoadingWithResult:]):
	* src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]),
	(-[URLLoadClient IFURLHandleResourceDidCancelLoading:]), (-[URLLoadClient
	IFURLHandleResourceDidFinishLoading:data:]), (-[URLLoadClient
	IFURLHandle:resourceDataDidBecomeAvailable:]), (-[URLLoadClient
	IFURLHandle:resourceDidFailLoadingWithResult:]), (Loader::load),
	(Loader::servePendingRequests):
	* src/kwq/KWQView.mm: (-[KWQHTMLView layout]), (-[KWQHTMLView drawRect:]):
	Changed numeric debug levels to symbolic ones.

	Defined more symbolic debug-level constants; specified ranges for use by
	different software levels (core/kit/client==browser) to enable easier
	isolation of debug messages.

	* Misc.subproj/WebKitDebug.h: #defined new debug levels for existing uses;
	renamed a couple.

	* Misc.subproj/WebKitDebug.m: (WebKitLog), (WebKitDebug): Updated for
	renamed debug levels.

	* WebView.subproj/IFBaseWebController.mm:
	(-[IFBaseWebController receivedProgress:forResource:fromDataSource:]):
	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _stopLoading]):
	* WebView.subproj/IFWebView.mm: (-[IFWebView layout]),
	(-[IFWebView setNeedsDisplay:]), (-[IFWebView setNeedsLayout:]), (-[IFWebView drawRect:]),
	(-[IFWebView mouseDragged:]):
	* WebView.subproj/IFWebViewPrivate.mm: (-[IFWebView _resetView]):
	Changed numeric debug levels to symbolic ones.

	* WebKit.pbproj/project.pbxproj: Jaguar/Puma version war.


git-svn-id: svn://svn.chromium.org/blink/trunk@713 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-07 19:36:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d4ef48febdc2c27ca5e547f59b21e35b23c132b2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00ja01s2q6s8s9hx', 1, e'Fixed break for Jersey test. Removed a warning that was only affecting sheridan


git-svn-id: svn://svn.chromium.org/blink/trunk@711 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-07 19:19:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/32c7d98c45bf7f6c04c3cd1c2d068e63e5e7f78e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jb01s2mt4rektf', 1, e'Intentional break to test jersey


git-svn-id: svn://svn.chromium.org/blink/trunk@710 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-07 19:14:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/544ed49fd71e75c78f529f156637a14439ddc9e0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jc01s29nji0fnd', 1, e'
Lots of little changes.


git-svn-id: svn://svn.chromium.org/blink/trunk@709 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-07 19:14:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c9da658b2518cbe75a3f0db7c4a08102af7f8c39');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jd01s2hpk5s8x0', 1, e'	Removed unused file in kdelibs that I missed in previous commit.


git-svn-id: svn://svn.chromium.org/blink/trunk@707 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2002-03-07 14:55:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1ad53e2a1d7b99b7f5e0e9a6c5c6d92de016e10d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00je01s2s66app43', 1, e'	Removed unused files in kdelibs.


git-svn-id: svn://svn.chromium.org/blink/trunk@706 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2002-03-07 06:38:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/04878295966c76f3a1d9b5e2ac988eb48d004701');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jf01s2kxpu5476', 1, e'	* Misc.subproj/IFError.h: Removed stray but evil import.

	* BrowserDocument.m: (-[BrowserDocument locationChangeStartedForFrame:]),
	(-[BrowserDocument locationChangeCommittedForFrame:]):
	Commented back in some error logging stuff now that things are mostly working.
	(-[BrowserDocument locationChangeDone:forFrame:]): Added cheesy hack to show
	load errors; will refine soon.


git-svn-id: svn://svn.chromium.org/blink/trunk@705 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-07 01:57:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e35e7a70229c885fc76b0aa6d7e7a1f812beada1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jg01s28mfgrtlv', 1, e'Plugins can now set status bar text


git-svn-id: svn://svn.chromium.org/blink/trunk@704 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-06 21:10:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/301a02af47da6a4ed0f52bc9c347c2b07c9a0e20');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jh01s2k1vtdbwo', 1, e'Fixed extern "C" horkage.


git-svn-id: svn://svn.chromium.org/blink/trunk@703 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-06 18:47:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bfd321ab4a2529a631c96bf1e761ccacf46a872d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00ji01s21zyt46r4', 1, e'	Added APPLE_CHANGES define for compiling our changes to kdelibs.

	Cleaned up all our changes to kdelibs, removed bitrot, and replaced use
	of _KWQ_ with new APPLE_CHANGES define.


git-svn-id: svn://svn.chromium.org/blink/trunk@702 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'gramps', '2002-03-06 17:47:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3f3c5038675c7d71ac0700c8b6c58d74a0566a40');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jj01s2enwmpkgq', 1, e'	* src/kwq/KWQKURL.mm: (KURL::KURL): If resolving a relative URL
	fails, assume it\'s absolute and possibly malformed, rather than
	appending it to the path of the previous URL. This fixes a
	CPU-spinning hang that John and Richard found.


git-svn-id: svn://svn.chromium.org/blink/trunk@701 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-06 15:06:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b3385e6bf92d333a95b9db59093a763792e16a38');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jk01s2t9diz7b7', 1, e'Top level:
	Install NSStringBuffer.h from Jaguar on Puma systems, so WebKit
	can compile with -Werror once again. Fixes:

	Radar 2867700 (Need to install Jaguar NSStringBuffer.h on Puma so
	we can build WebKit with -Werror again)

	* Updates/NSStringBuffer.h-jaguar:
	* Updates/install-NSStringBuffer.sh:
	* Updates/update:
WebKit:
	* WebKit.pbproj/project.pbxproj: Turn on -Werror.


git-svn-id: svn://svn.chromium.org/blink/trunk@700 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-06 13:37:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2063fa952e0256f3a1146b4a0f3f50e816f57e2d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jl01s2b9p0dwig', 1, e'        Streamlined layout and drawing.  We now do the minimum amount of drawing and
        layout.


git-svn-id: svn://svn.chromium.org/blink/trunk@699 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-06 02:06:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/515036d9fcf07662a03e524b19d2a93dbe7ecc87');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jm01s2volvqqb5', 1, e'Attempt to fix symbol errors.


git-svn-id: svn://svn.chromium.org/blink/trunk@698 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-06 01:13:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6ae1c85d6aa336c593d6e68bee403db75eade437');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jn01s28icx6ey2', 1, e'    Replaced mechanism for setting array of 7 font sizes from user\'s chosen
    font size with a far simpler one that gets better results.

	* Preferences.subproj/TextPreferences.m:
	(-[TextPreferences defaultFontSize]): Renamed from mediumFontSize
	(-[TextPreferences setDefaultFontSize:]): Renamed from setMediumFontSize;
	now does everything by computation, no table involved.
	(-[TextPreferences updateFontSampleField:]), (-[TextPreferences changeFont:]):
	updated for name changes.
	* Defaults.plist: Tweak default sizes so they match what algorithm returns.

	* WebView.subproj/IFWebDataSource.mm: (+[IFWebDataSource initialize]):
	Tweak default font sizes so they match what algorithm used in Alexander
	returns.


git-svn-id: svn://svn.chromium.org/blink/trunk@697 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-06 00:46:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/413b014073103e7b7dd53bfbc5726dd1766038f7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvh6w00jo01s246froe1v', 1, e'        Pass errors correctly to browser.
        Removed old notification code.
        Added support for IFError.
        Lots of little cleanups.
        Improved IFWebFrame state handling.


git-svn-id: svn://svn.chromium.org/blink/trunk@696 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-06 00:33:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/625dd2a6ee76030d3735289910adca975ea04062');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00js01s2pnnfsnz7', 1, e'2002-03-18  Kenneth Kocienda  <kocienda@apple.com>

        I reworked the code a bit in IFURLLoadManager so I could remove some more locking and made
        the locking that still needs to be there more fine grained.

        * CacheLoader.subproj/IFURLLoadManager.m: (-[IFURLLoadManager objectForURL:]),
        (-[IFURLLoadManager setObject:forURL:attributes:expiry:]), (-[IFURLLoadManager
        invalidateURL:]), (-[IFURLLoadManager clearAllCaches]), (-[IFURLLoadManager
        cancelRequestWithURLHandle:]), (-[IFURLLoadManager cancelAllRequestsWithURL:]),
        (-[IFURLLoadManager cancelAllRequestsInGroup:]):

        Some small code clean ups here.

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase initWithPath:]),
        (-[IFURLFileDatabase setObject:forKey:]), (-[IFURLFileDatabase
        removeObjectForKey:]), (-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase
        open]):


git-svn-id: svn://svn.chromium.org/blink/trunk@770 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-18 15:34:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e2e98efc8e4b04b91ab5a29e6c37c77db3470352');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jt01s2xu0jrdir', 1, e'Implementation of replacement code for NSLayoutManager.  Huge
performance gains.


git-svn-id: svn://svn.chromium.org/blink/trunk@768 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-18 05:45:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5460c8c8dcc22db2c3530bde30a10746f69a4fc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00ju01s2n9t0dlln', 1, e' i        Fixed scroll bar flash.  Add provisional view to go along with
        provisional widget.

        Temporary hack to bypass spin-o-death problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@767 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-17 03:22:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b68ef6d92a48880c63196f78bfca90df3b365c71');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jv01s23cf4o00x', 1, e'iFixed error handling.  Removed ObjC code for url handle client from KHTMLPart.
Need to sanitize KHTMLPart further.

Changed stop to use stopLoading on frame instead of datasource.

Fixed error handling.  Fixed most frame loading problems.
Cleaned up frame state machine.
Moved IFMainURLHandleClient from WebCore.


git-svn-id: svn://svn.chromium.org/blink/trunk@765 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-17 02:08:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/31135073e33e95372d03c510374ad668feb67f08');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jw01s2vry1d25y', 1, e'iFixed crasher initializing items in popup button.
Increased fragment cache initial size.


git-svn-id: svn://svn.chromium.org/blink/trunk@756 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-16 01:00:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/89b81ac0fc3e3ef04018ffbb76573fbf12559fcf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jx01s2wcy2zu61', 1, e'Made scrolling a little nicer by sending an updateEvent before NPP_SetWindow instead of after


git-svn-id: svn://svn.chromium.org/blink/trunk@755 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-16 00:51:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/164e494980298201de5e9154f519951a628391ca');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jy01s2wwc335an', 1, e'	Impose default-based limit (1000 by default) on number of history items
	saved/loaded. Also instrumented timing for saving/loading history.

	* History.subproj/IFWebHistoryPrivate.m:
	(+[IFWebHistoryPrivate initialize]): register default for WebKitHistoryItemLimit.

	(-[IFWebHistoryPrivate arrayRepresentation]): respect limit
	(-[IFWebHistoryPrivate loadHistory]): respect limit, time the load.
	(-[IFWebHistoryPrivate saveHistory]): time the save.

	* WebKit.pbproj/project.pbxproj: version wars

	* Debug/DebugUtilities.m: (-[IFWebHistory populateHistoryWithTestData:]):
	Changed number of items generated by Populate History menu item to 1000.


git-svn-id: svn://svn.chromium.org/blink/trunk@754 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-15 23:59:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5964532d51a1b241ce05ecad933f6adc42e4d35a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00jz01s2fcud6sly', 1, e'iMore string usage optimizations.  Got another 10% or so.


git-svn-id: svn://svn.chromium.org/blink/trunk@753 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 23:08:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c3cde0eab2ccfa6001ab843e6c79ca8287659acb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k001s26yoeamo0', 1, e'	Fixed bug where history entry images weren\'t showing up, except by historical
	accident in some cases.
	Made IFWebHistory no longer be a singleton class; made the file location
	be passed in at init time.

	* History.subproj/IFURIEntry.m: (-[IFURIEntry image]): Get the default image
	a way that works with frameworks; only get the default image once.

	* History.subproj/IFWebHistory.h:
	* History.subproj/IFWebHistory.m:
	(+[IFWebHistory webHistoryWithFile:]): New convenience constructor that returns
	a new IFWebHistory object with a particular disk file.
	(-[IFWebHistory initWithFile:]): New init method for specifying a disk file.
	(-[IFWebHistory file]): New accessor for file path.
	(-[IFWebHistory loadHistory]),
	(-[IFWebHistory	saveHistory]): Use file accessor.
	Also removed the methods that were computing a file path to use.

	* History.subproj/IFWebHistoryPrivate.h:
	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate initWithFile:]),
	(-[IFWebHistoryPrivate dealloc]), (-[IFWebHistoryPrivate file]),
	(-[IFWebHistoryPrivate loadHistory]), (-[IFWebHistoryPrivate saveHistory]):
	Guts of implementation for file-manipulation stuff.

	* Resources/url_icon.tiff: ran tiffUtil to premultiply the alpha channel. This
	was spewing error messages that I didn\'t notice before because they only
	happen on Puma and I was on Jaguar.

	* WebKit.pbproj/project.pbxproj: not sure what change I made, maybe version wars.

	Made app\'s IFWebHistory object come from AppController rather than using
	the now-obsolete sharedWebHistory; made Populate History Debug item create
	a large number of items so I can test the performance of loading them; added
	Erase All History item to Debug menu for convenience.

	* AppController.h:
	* AppController.m:
	(GetRefPath), (FindFolderPath),
	(-[AppController _computeHistoryFilePath]): New methods, moved from
	IFWebHistory, to determine the file path for the History file.

	(-[AppController webHistory]): new method to get at app-wide IFWebHistory.

	(-[AppController awakeFromNib]), (-[AppController dealloc]),
	(-[AppController applicationWillTerminate:]),
	(-[AppController insertItemsForDate:intoMenu:atIndex:withRunningTotal:limit:]),
	(-[AppController updateHistoryInMenu]): Updated to use [AppController webHistory]
	instead of [IFWebHistory sharedWebHistory]

	* BrowserDocument.m: (-[BrowserDocument addHistoryEntryForCurrentPage]):
	Updated to use [AppController webHistory] instead of [IFWebHistory sharedWebHistory]

	* Debug/DebugUtilities.m:
	(+[DebugUtilities createDebugMenu]): Added Erase All History and separator.
	(-[IFWebHistory	populateHistoryWithTestData:]): Changed approach. It used to read
	a few valid URLs from a disk file; now it creates a lot of bogus ones.

	* Debug/FakeHistory.plist: Removed this list now that Populate History computes
	items from scratch.

	* GlobalHistory.m: (+[GlobalHistory sharedGlobalHistory]),
	(-[GlobalHistory webHistory]), (-[GlobalHistory init]),
	(-[GlobalHistory outlineView:child:ofItem:]),
	(-[GlobalHistory outlineView:numberOfChildrenOfItem:]),
	(-[GlobalHistory receivedEntriesChangedNotification:]),
	(-[GlobalHistory removeSelectedItems:]), (-[GlobalHistory removeAll:]):
	Updated to use AppController\'s webHistory instead of [IFWebHistory sharedWebHistory]

	* WebBrowser.pbproj/project.pbxproj: updated for removed file


git-svn-id: svn://svn.chromium.org/blink/trunk@752 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-15 22:17:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/29e26645ee0487e7f89fcfa9241aab4fe6563c7a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k101s2bfalwldq', 1, e'Oops again.


git-svn-id: svn://svn.chromium.org/blink/trunk@751 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-15 19:09:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/00987e90417e926ee614b59cadbb1bf064ee1dad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k201s247xg2hok', 1, e'        * src/kwq/KWQFontMetrics.mm: (QFontMetrics::descent): Oops, removed a - sign
        that I should have left in there.


git-svn-id: svn://svn.chromium.org/blink/trunk@750 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-15 19:08:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e16c44e323ec6c9899f52729db84057aa100df5b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k301s2vu1sb1cj', 1, e'        Some more optimizations. Carves another 6% or so off of NSView.html.

        * src/kwq/KWQChar.mm: (QChar::QChar): Handle characters > 0x7F correctly.
        (QChar::cell): Remove unnecessary & operation.
        (QChar::row): Remove unnecessary & operation.
        (QChar::latin1): Do a simpler check rather than calling row().
        (QChar::operator char): Do the same work as latin1 inline.
        (operator==) (operator!=), (operator>=), (operator>), (operator<=), (operator<):
        Handle characters > 0x7F correctly.

        * src/kwq/KWQFontMetrics.mm: (QFontMetrics::ascent), (QFontMetrics::descent):
        Cache the ascent and descent rather than computing it each time we are called.


git-svn-id: svn://svn.chromium.org/blink/trunk@749 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-15 18:30:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2992d3f2c81952b43bd9166649aae37b948ec463');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kj01s2bvirn90w', 1, e'Re-worked fragment cache to minimize memory usage.


git-svn-id: svn://svn.chromium.org/blink/trunk@730 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-13 18:34:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d3b47af9fc76fa25a382812a438b84334f9279f0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kv01s2kx8k1cu3', 1, e'	Fixed the following post-merge crashers:

	2885602 - Alexander crashes when clicking on a particular link in Google groups
	2885564 - Alexander crashes on load failures

	* src/kdelibs/khtml/khtmlview.cpp: (KHTMLView::~KHTMLView): Fix
	Radar 2885602 by detaching the document from the view when the
	view is destroyed. This was making the document reference a
	destroyed view later.

	* src/kwq/KWQKHTMLPart.mm:
	(KHTMLPart::~KHTMLPart): Fix Radar 2885564 by checking if m_doc is
	NULL, since it\'s now inititally set to NULL.
	(KHTMLPart::KHTMLPart, KHTMLPart::init): Formatting tweaks.


git-svn-id: svn://svn.chromium.org/blink/trunk@801 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-22 08:44:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9cbef23f11d9b2162d836cf9a6ff81fbd8de8038');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00nx01s2yz4nze5a', 1, e'        Tuned and re-enabled resource layouts.


git-svn-id: svn://svn.chromium.org/blink/trunk@963 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-04 18:38:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/41e3b93e0619fb19890681662338ce69def6a46b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k401s2btx0mciv', 1, e'        Optimizations for creating empty QFont objects, measuring certain single
        characters, and copying QFontMetrics objects. Makes loading NSView.html about
        18% faster.

        * src/kwq/qt/qfontmetrics.h: Use a ref-counted pointer so QFontMetrics objects
        for the same QFont can share data.

        * src/kwq/KWQFont.mm: (loadDefaultFont): New, used to load the default
        font used for default-initialized QFont objects.
        (QFont::_initializeWithFont): Don\'t recompute theh family name, point size, or
        traits.
        (QFont::setFamily), (QFont::setPixelSizeFloat), (QFont::setWeight),
        (QFont::setItalic),: autorelease the font, as we do in the destructor, since
        someone could still be using the result of getFont.
        (QFont::operator==): Add a comment about a problem with this function.

        * src/kwq/KWQFontMetrics.mm: (QFontMetrics::QFontMetrics): Add a refCount, and
        a cached width for space and lower-case "x", the two single characters that
        are often measured.
        (QFontMetrics::~QFontMetrics): Simplify.
        (QFontMetrics::operator=): Just copy the underlying data pointer rather than
        making our own KWQLayoutInfo object.
        (QFontMetrics::baselineOffset): Make const.
        (QFontMetrics::width): Add the caching for space and "x".


git-svn-id: svn://svn.chromium.org/blink/trunk@748 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-15 15:49:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d5a5f588ca46e1e8bf045a7f27309294718f7101');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k501s2q64hmmna', 1, e'        Optimizations that remove unnecessary cfstring allocations of local scope
        strings.  QString::gstring_toQString and QString::gstring_toCFString were
        added to simplify the reuse of a static CFString as the backing store for
        local QStrings.  Hit the top two problem areas.  Many more gains to be had
        by using this technique.


git-svn-id: svn://svn.chromium.org/blink/trunk@747 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 13:57:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d30a3026b060843d2897cfe3afdd4a02a4fd4075');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k601s29mym29aw', 1, e'        Fixed another problem in QString::find().
        Added dangerous but fast string allocation optimization to render_text.cpp.


git-svn-id: svn://svn.chromium.org/blink/trunk@746 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 03:46:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8c71a8e1325e66a05fbb75165db41ea4eb46313a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k701s2hahnbhf0', 1, e'Fixed optimized find() implementation.  I had the sense of caseSensitive inverted.


git-svn-id: svn://svn.chromium.org/blink/trunk@744 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 01:16:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b0e0fedea99788bf46a54a23cbef6ef83703fb67');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k801s2je1xxgu8', 1, e'Fixed compile error.:wq


git-svn-id: svn://svn.chromium.org/blink/trunk@742 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 00:17:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/539c3ddca70ac396e9af749ae8b268f5cac18d25');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkk00k901s2whv8pmwq', 1, e'Attempted implementation of space optimizations.  Disabled for now.


git-svn-id: svn://svn.chromium.org/blink/trunk@741 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-15 00:02:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/381310d1a6db7993f18227975fd2ac5a6cbbfe0f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00ka01s2g1a17joz', 1, e'	Made history store its data in ~/Library/Application Support/<app name>/History.plist

	* History.subproj/IFWebHistoryPrivate.m:
	(GetRefPath), (FindFolderPath): Functions copied from NSSavePanel.m for using
	FindFolder in a POSIX sort of way. Ken plans to put some version of this in
	IFNSFileManagerExtensions eventually, which I\'ll switch to later.
	(-[IFWebHistoryPrivate historyFilePath]): Construct the path using FindFolderPath
	and the file name.
	(-[IFWebHistoryPrivate loadHistory]),
	(-[IFWebHistoryPrivate saveHistory]): failure case debug messages are now more specific.


git-svn-id: svn://svn.chromium.org/blink/trunk@740 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-14 22:36:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/af62bdeb91901aadfa6baefb3c951d29bf1c4c38');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kb01s28y5v2x0c', 1, e'2002-03-14  Kenneth Kocienda  <kocienda@apple.com>

        Fix for this bug:

        Radar 2877924 ("/Users is not a directory" warning when /Users is a link to a directory)

        In addition, the URL file database is now much more "optimistic" about creating directories and files.
        The result should be a whole lot less chatter on fs_usage.

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase setObject:forKey:]),
        (-[IFURLFileDatabase open]):
        * Misc.subproj/IFNSFileManagerExtensions.h:
        * Misc.subproj/IFNSFileManagerExtensions.m: (-[NSFileManager
        createFileAtPathWithIntermediateDirectories:contents:attributes:directoryAttribut
        es:]), (-[NSFileManager createIntermediateDirectoriesForPath:attributes:]),
        (-[NSFileManager fileExistsAtPath:isDirectory:traverseLink:]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@739 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-14 20:53:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/167c59f2dffd319e0a1da12bfceb38901b6a8a9e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kc01s2scftr1de', 1, e'Implemented a progressively cache fragment.


git-svn-id: svn://svn.chromium.org/blink/trunk@738 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-14 20:30:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4c20a7c14a1480c6bac41fe3131474a11dcf97da');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kd01s2ixtstwjh', 1, e'Updated debugging code.  Disabled optimized QString::find.


git-svn-id: svn://svn.chromium.org/blink/trunk@737 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-14 03:09:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/33761b9b6281edaae032e79d2aec03075b81b83a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00ke01s2gi9j8uq7', 1, e' Added support to stop plugins in removeFromSuperview.


git-svn-id: svn://svn.chromium.org/blink/trunk@736 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-14 02:07:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/373598aa9a82c2d5d526ebc0002fab9c4f4fc6e8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kf01s2nurpg1ax', 1, e'Removed fprintfs.


git-svn-id: svn://svn.chromium.org/blink/trunk@735 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-14 02:03:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7bf7cd3a1564b104a1b629491adcf76b2b57bb4f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kg01s2hmqrq96q', 1, e'- Added support for the OpenURL AppleScript command
- Added stubs for ShowFile and OpenBookmark AppleScript commands
- Added a stub for "start" in IFPluginView
- Made IFPluginView observe NSWindowWillCloseNotification


git-svn-id: svn://svn.chromium.org/blink/trunk@734 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-14 01:39:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/609ec17cf5464bf6600d9b558d2391b3d51dc207');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kh01s2l08xmfvp', 1, e'Fixed open window w/ no open windows crasher.


git-svn-id: svn://svn.chromium.org/blink/trunk@732 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-14 00:30:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d384a74cb16da6d3d3839d6aa08899a751393d7d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00ki01s2oys5mh3b', 1, e'Added font cache.


git-svn-id: svn://svn.chromium.org/blink/trunk@731 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-13 23:49:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/27a636caf5f221d77f7df54b1308e0bcd386ce6d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvlkl00kk01s251ik1cjt', 1, e'2002-03-13  Kenneth Kocienda  <kocienda@apple.com>

	Labyrinth:

        Rolled back change in never-expires-test since my change to WFTool got hammered
        by cvs/applecvs last week and I can\'t yet take advantage of the new options
        processing code that should be there, but isn\'t. Arrrrgghh!

        * Tests/WebFoundation-CacheLoader/never-expires-test:

        Updated for new didRedirectToURL callback. This is a partial fix for this bug:
        Radar 2879234 (Redirected URLs not used for subsequent GETs)

        * Tests/WebFoundationC/ifurlhandlec-test.c: (ResourceDidRedirectToURL), (run):
        * Tools/wftool/WFTool.m: (-[WFTool IFURLHandle:didRedirectToURL:]):


	WebCore:

        Updated for new didRedirectToURL callback. This is a partial fix for this bug:
        Radar 2879234 (Redirected URLs not used for subsequent GETs)

        * src/kwq/KWQKHTMLPart.mm: (-[KHTMLPartLoadClient
        IFURLHandle:didRedirectToURL:]):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandle:didRedirectToURL:]):


	WebFoundation:

        Updated for new didRedirectToURL callback. This is a partial fix for this bug:
        Radar 2879234 (Redirected URLs not used for subsequent GETs)

        * CacheLoader.subproj/IFHTTPURLHandle.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        initWithURLLoad:]), (-[IFHTTPURLProtocolHandler dealloc]),
        (-[IFHTTPURLProtocolHandler createHTTPRequest]), (-[IFHTTPURLProtocolHandler
        performHTTPHeaderRead:]), (-[IFHTTPURLProtocolHandler setRedirectedURL:]),
        (-[IFHTTPURLProtocolHandler setResponseHeaders:]), (-[IFHTTPURLProtocolHandler
        shouldCacheResourceData]):
        * CacheLoader.subproj/IFURLCacheLoaderConstantsPrivate.h:
        * CacheLoader.subproj/IFURLHandle.h:
        * CacheLoader.subproj/IFURLHandle.m: (_sendDidRedirectToURLMessages),
        (-[IFURLHandleInstanceVariables initWithHandle:]),
        (-[IFURLHandleInstanceVariables prepareCallbacks]),
        (-[IFURLHandleInstanceVariables dealloc]), (-[IFURLHandleSynchronousClient
        IFURLHandle:didRedirectToURL:]), (-[IFURLHandle finalURL]), (-[IFURLHandle
        redirectedURL]), (-[IFURLHandle didRedirectToURL:]), (-[IFURLHandle
        setFinalURL:]), (-[IFURLHandle notifyClientsBackgroundLoadFailed]),
        (-[IFURLHandle notifyClientsURLRedirected]):
        * CacheLoader.subproj/IFURLHandleC.h:
        * CacheLoader.subproj/IFURLHandleC.m: (IFURLHandleDidRedirectToURL),
        (IFURLHandleGetFinalURL), (IFURLHandleGetRedirectedURL):
        * CacheLoader.subproj/IFURLHandleCallBackClient.m: (-[IFURLHandleCallBackClient
        IFURLHandle:didRedirectToURL:]):
        * CacheLoader.subproj/IFURLHandleClient.h:
        * CacheLoader.subproj/IFURLHandlePrivate.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@729 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-13 17:27:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/60d7485d468d96ca774e44501105d2f338fa8d7f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kl01s2v8u3y7c7', 1, e'Top level:
	* prepare-ChangeLog: Detect added and removed files, fixing Radar
	2886161 (prepare-ChangeLog ignores added and removed files)

	Hack automake to not complain about libraries ending in .o or
	.dylib, to avoid the need to run autogen manually sometimes.

	* Updates/automake-1.5-mac-ported.diff:
	* Updates/install-automake.sh:
WebCore:
	Fix some things that were making automake complain.

	* src/kdelibs/kjs/Makefile.am:
	* src/kwq/Makefile.am:


git-svn-id: svn://svn.chromium.org/blink/trunk@813 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-22 23:41:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b0e5097d885953bc1163fbbbf85525879001d9f2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00km01s2efzmd3pn', 1, e'Removed these autogenerated files.


git-svn-id: svn://svn.chromium.org/blink/trunk@811 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-22 23:19:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/207494d05b65c1430627b9d4f5039910b3bd6f8d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kn01s2euiiq5ow', 1, e'        * WebKit.pbproj/project.pbxproj:
        Added the MIME classes to WebKit.


git-svn-id: svn://svn.chromium.org/blink/trunk@810 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-22 23:11:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/936e41b79a1626102b5d5eefb3abaf0cf8599df4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00ko01s2xlocrcre', 1, e'        * src/kdelibs/khtml/css/cssstyleselector.cpp: (khtml::applyRule):
        Fix boolean logic mistake from the original KDE sources.


git-svn-id: svn://svn.chromium.org/blink/trunk@808 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-22 22:05:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/30de3abcdcad8bd45ddeab83aa9f9a882fca9a0c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kp01s2oe50fi67', 1, e'        Finally giving up on the complete QString rewrite after doing it 3 times,
        Darin checks in some improvements for the old QString. This makes a QString
        be 8 bytes instead of 12, and improves a few other details. No dramatic
        speedups, but no slowdown either.

	* src/kwq/qt/qstring.h:
	* src/kwq/KWQString.mm:
	(QString::QString), (QString::~QString), (QString::operator=),
        (QString::unicode), (QString::latin1): Store the cache type inside the cache.
	(QString::copy): No need to deep copy here.
        (QString::simplifyWhiteSpace): Use CFStringInlineBuffer.
	(QString::insert): Fix single-character insertions so they don\'t create and
        destroy a mutable CFStringRef every time.
        (QString::operator+=): Call the appropriate insert function.
	(QString::flushCache): Store cache type inside cache.
        (QString::compareToLatin1): Use CFStringInlineBuffer.
	(operator==): Use CFStringInlineBuffer.
        (QConstString::QConstString): Store the cache type inside the cache.


git-svn-id: svn://svn.chromium.org/blink/trunk@807 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-22 21:07:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/24dfde360e275d7a6633be475dd8a7a17f70d571');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kq01s28n41e4ym', 1, e'	* WebView.subproj/IFWebView.mm: (-[IFWebView reapplyStyles]):
	Removed stale FIXME.

	Made changing font sizes work immediately (other than an
	unrelated crash).

	* src/kwq/KWQKHTMLSettings.mm:
	(KHTMLSettings::KHTMLSettings),
	(KHTMLSettings::fontSizes): Moved defaults-fetching code from
	constructor to accessor, so it doesn\'t get out of synch with
	preference changes.

	* src/kwq/khtml/khtml_settings.h: Added "mutable" keyword
	to declaration of m_fontSizes, so the other change would compile.

	* BrowserDocument.m: (-[BrowserDocument reapplyStyles:]):
	Added call to -[IFWebView setNeedsLayout:YES]. This causes
	a sporadic but frequent crashing bug when changing fonts
	and styles from the Preferences. I\'m going to hand lucky
	Richard a bug on that.


git-svn-id: svn://svn.chromium.org/blink/trunk@806 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-22 19:59:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5a212937f84de433275b89445228e6406a3c0533');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kr01s226eu5zl4', 1, e'Fixed reapplyStyles to use new KDE3 recalcStyle function.


git-svn-id: svn://svn.chromium.org/blink/trunk@805 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-22 18:20:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/52a100956e505f66ba5ae38b73db8c88054a7506');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00ks01s2ud0iqp9p', 1, e'        Fixed reapplyStyles to use new KDE3 recalcStyle function.


git-svn-id: svn://svn.chromium.org/blink/trunk@804 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-22 18:19:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8409267e39ebf45ca192dad0eeebaea436c70802');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kt01s2tgjh9b1r', 1, e'2002-03-22  Kenneth Kocienda  <kocienda@apple.com>

        Moved KWQKloader to the new thread-safe API for accessing handle attributes.

        * src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]),
        (-[URLLoadClient IFURLHandleResourceDidCancelLoading:]), (-[URLLoadClient
        IFURLHandleResourceDidFinishLoading:data:]), (-[URLLoadClient
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[URLLoadClient
        IFURLHandle:resourceDidFailLoadingWithResult:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@803 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-22 17:15:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4d7388ca9966e223fd52477d840b04e2c951532c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00ku01s23cpz42eg', 1, e'        Fixed subtle measurement problems.  These were most evident of pages
        that had lots of rounding deviation.  My assumptions about being able to
        round glyph advances was incorrect.  We must pay the expense of a float addition,
        instead of integer addition.  This slows down our inner loop.  Oh well,
        we\'re still very fast.


git-svn-id: svn://svn.chromium.org/blink/trunk@802 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-22 17:06:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/702b8fcec9d353aaa40db588d24990ae173667a5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l901s2dnfipyhq', 1, e'        Added comments about new layout scheme.  Cleaned up code.
        Improved core measurement routine.

	Turned off logging by default.


git-svn-id: svn://svn.chromium.org/blink/trunk@777 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-18 23:26:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/47212f1ce061150a54916d020ca8950c2704829c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kw01s2lzi0o9ke', 1, e'	* WebView.subproj/IFWebView.mm: (-[IFWebView reapplyStyles]):
	Commented out call to applyChanges that no longer exists.
	This was breaking the build. Live font changes are
	temporarily broken again.


git-svn-id: svn://svn.chromium.org/blink/trunk@800 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-22 01:42:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cc963bacec1426691afd150022abc83b12ff544c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kx01s2j8u08h4s', 1, e'Merged changes from LABYRINTH_KDE_3_MERGE branch.


git-svn-id: svn://svn.chromium.org/blink/trunk@798 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-22 00:31:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a17d19c681ebf990b99548c497da08c61bbc7bdb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00ky01s2lpfm5aqt', 1, e'Doh!


git-svn-id: svn://svn.chromium.org/blink/trunk@797 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-21 23:21:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4dcda448a85684cf52451a520ec254288b497fdd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00kz01s2w7yjcxmk', 1, e'header changes for setNeedsToApplyStyles: and reapplyStyles


git-svn-id: svn://svn.chromium.org/blink/trunk@796 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-21 23:19:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ac801e49283801dbe2c46951ae15fe90f4d82d9a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l001s2pyeex58s', 1, e'Added setNeedsToApplyStyles: and reapplyStyles.  This is for dynamic preferences
refresh support.


git-svn-id: svn://svn.chromium.org/blink/trunk@795 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-21 22:59:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f56230c4b69b0b683c0d1d2c9f8821303ba9bcd1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l101s29ycixbh1', 1, e'2002-03-21  Kenneth Kocienda  <kocienda@apple.com>

        Fixed an issue with the disk cache taking too long to empty. Now, the disk cache
        is emptied on a background thread.

        * Database.subproj/IFURLFileDatabase.h:
        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase removeAllObjects]):
        * Misc.subproj/IFNSFileManagerExtensions.h:
        * Misc.subproj/IFNSFileManagerExtensions.m: (-[NSFileManager
        performRemoveFileAtPath:]), (-[NSFileManager backgroundRemoveFileAtPath:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@794 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-21 22:02:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3dffda2758e7020082260c383e2ddf9dcd6e612d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l201s2ddxrmvum', 1, e'	Cleaned up defaults registration and use. The class
	IFPreferences now registers the defaults at load time, early
	enough that Alexander doesn\'t have to register them separately
	as it had been. Also, all the defaults currently in use now
	have accessor cover methods, which Alexander will use
	exclusively.

	* WebView.subproj/IFPreferences.mm:
	New file, registers defaults and implements cover methods.

	* WebView.subproj/IFPreferences.h:
	This file existed but wasn\'t being used (contents #ifdeffed out).
	Now it declares the cover methods, but still has an #ifdeffed
	section for possible future stuff.

	* WebKit.pbproj/project.pbxproj: Updated for new file.

	* WebView.subproj/IFWebDataSource.mm:
	(+[IFWebDataSource initialize]): removed defaults-registration
	from here.

	Reworked access of WebKit preferences. Now they are always accessed through
	IFPreferences cover methods, never directly.

	* Defaults.plist,
	* PreferenceKeys.h:
	Took out all mention of WebKit preferences.

	* Preferences.subproj/ActiveContentPreferences.m: (-[ActiveContentPreferences
	toggleJavaEnabled:]), (-[ActiveContentPreferences toggleJavaScriptEnabled:]),
	(-[ActiveContentPreferences toggleJavaScriptCanOpenWindows:]),
	(-[ActiveContentPreferences updateJavaScriptViews]), (-[ActiveContentPreferences
	togglePluginsEnabled:]), (-[ActiveContentPreferences initializeFromDefaults]):
	* Preferences.subproj/TextPreferences.m: (-[TextPreferences defaultFontSize]),
	(-[TextPreferences setDefaultFontSize:]), (-[TextPreferences
	updateFontSampleField:]), (-[TextPreferences changeFont:]), (-[TextPreferences
	takeStandardFontChoiceFrom:]):
	Rewrote to use IFPreferences for all WebKit preferences.

	* WebBrowser.pbproj/project.pbxproj: version wars


git-svn-id: svn://svn.chromium.org/blink/trunk@793 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-21 19:38:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c23c950b6b23dc9834a88bf2511df42be43ecbe9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l301s2vfftt22j', 1, e'	Added displayTitle field to IFURIEntry. This is intended to hold the string
	used in menu items, window titles, etc. Alexander uses this to cache the
	center-truncated title for pages with very long titles.

	* History.subproj/IFURIEntry.h:
	* History.subproj/IFURIEntry.m: (-[IFURIEntry setDisplayTitle:]), (-[IFURIEntry
	dictionaryRepresentation]), (-[IFURIEntry initFromDictionaryRepresentation:]):

	Made Go, Window, and Debug menus use center-truncated strings for long URLs.

	* StringTruncator.h,
	* StringTruncator.m:
	New class, donated by Albert Dul, that truncates a string to a given width,
	inserting an ellipses in the center.

	* Defaults.plist,
	* PreferenceKeys.h: New (non-UI) user default for maximum menu item width.

	* AppController.h:
	* AppController.m:
	(-[AppController setUpStringTruncator]): set the StringTruncator to use
	the menu font at the menu font size.
	(-[AppController awakeFromNib]): call setUpStringTruncator.
	(_URLMenuTitleMaxWidth): read the max width from prefs and cache it in a variable.
	(-[AppController menuTitleForURL:withTitle:]): New method, uses center-truncated
	string technology.
	(-[AppController _menuTitleForURIEntry:]): Calls menuTitleForURL:withTitle, storing
	result using -[IFURIEntry setDisplayTitle] so we never have to measure this entry
	again.
	(-[AppController insertHistoryEntry:intoMenu:atIndex:]): Use _menuTitleForURIEntry.
	(-[AppController _removeHistoryFromMenu]): added leading underscore to name (I gotta
	do this more systematically).
	(-[AppController _addHistoryToMenu]): broke out into separate method for convenience.
	(-[AppController updateHistoryInMenu]): report timing with WebKitDebug

	* BrowserDocument.m: (-[BrowserDocument displayName]):
	Use center-truncated string technology.

	* Debug/DebugUtilities.m:
	(+[DebugUtilities addBookmarkToMenu:forURL:keyEquivalent:]),
	(+[DebugUtilities loadDebugBookmarks:]):
	Use center-truncated string technology for debug bookmarks (not cached).

	* WebBrowser.pbproj/project.pbxproj: Updated for new files.


git-svn-id: svn://svn.chromium.org/blink/trunk@792 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-21 01:11:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d19d043de25091021f403ef490d42197a769646');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l401s2asc1f0r3', 1, e'Fixed NSPopupButton performance bottleneck.


git-svn-id: svn://svn.chromium.org/blink/trunk@787 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-20 04:01:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff649da339bea0020aa781120b4f95835d4c5173');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l501s2pzms94cu', 1, e'Fixed IFWebView leak.


git-svn-id: svn://svn.chromium.org/blink/trunk@785 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-20 02:15:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c5dc6335ca8569ba56ca8a9a718e501b29fd67f2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l601s2lsc2cpvh', 1, e'iChanged float width cache to use shorts.


git-svn-id: svn://svn.chromium.org/blink/trunk@783 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-19 22:57:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e939e447935a196b3fb7bd2945cbc1752d9da7d7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l701s2gucw38k2', 1, e'Improved cache-miss case for non-latin1 characters.


git-svn-id: svn://svn.chromium.org/blink/trunk@780 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-19 18:23:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/968b35602b810d9cf3dc9d581b6c0abc1db4f910');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00l801s2olnl95yp', 1, e'	* src/kwq/KWQListImpl.mm: (KWQListImpl::sort): Use insertion sort for
	small lists. Also special case for lists of size 2 and under.


git-svn-id: svn://svn.chromium.org/blink/trunk@778 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-19 00:10:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5a5039e6f96e390af3771e7720fc526b8f42e88');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00la01s26xvs1xht', 1, e'Fix NULL case.


git-svn-id: svn://svn.chromium.org/blink/trunk@776 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-18 23:09:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d2822dabd65137806f38665dbfd8f90db27c9e63');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00lb01s2h2dmsjzr', 1, e'2002-03-18  Kenneth Kocienda  <kocienda@apple.com>

        Changed file load thread so that it tries to use a memory-mapped file to
        read from the file system instead of using CFStreams. Now more than 2x faster.

        * CacheLoader.subproj/IFFileURLProtocolHandler.h:
        * CacheLoader.subproj/IFFileURLProtocolHandler.m: (-[IFFileURLProtocolHandler
        didLoadData:]), (-[IFFileURLProtocolHandler fileLoadThread]),
        (-[IFFileURLProtocolHandler beginLoadInBackground]), (-[IFFileURLProtocolHandler
        endLoadInBackground]):

        Changed instance of memcpy to the new IFFastMemoryMove function

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        performStreamRead:]):

        Moved timeout back to 60 seconds from 240 seconds.

        * CacheLoader.subproj/IFURLLoad.m:

        NSData now reads from a mapped file instead of using NSFileManager to read the file.

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase objectForKey:]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@775 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-18 22:29:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aa438a77a491e4e3f69aa01dc84e542d88fced64');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00lc01s2ioj1tee1', 1, e'        Redo inlining of QChar and QString and some other small speed improvements.
        Sadly, this doesn\'t seem to make things measurably faster, but I decided to
        commit my work rather than discarding it; it doesn\'t make things slower.

	* src/kwq/qt/qstring.h:
	* src/kwq/KWQChar.mm:
	* src/kwq/KWQString.mm:
        Do a lot more inlining. Also, the CFStringRef inside a QString is now never
        nil, so we can get rid of many checks for nil.

	* src/kwq/KWQFontMetrics.mm: (QFontMetrics::width): Use _rectForString() a
        couple more places.


git-svn-id: svn://svn.chromium.org/blink/trunk@774 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-18 22:10:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6db2b8489401a266e8b159c77373c2ee09fbe262');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00ld01s2amcgtd1b', 1, e'Changed to use non direct _rectForString() function.   Avoids
unnecessary NSString allocation.


git-svn-id: svn://svn.chromium.org/blink/trunk@773 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-18 19:16:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f3828a5fa6c529af661e2f638ea0e6ee82f49a40');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvrmx00le01s2reamdjcq', 1, e'	* prepare-ChangeLog: use ${cvs_command} rather than
	cvs in new update line; makes it work on appecvs-encrusted
	Jaguars again.

	Imposed age limit on history items saved to/loaded from disk.
	Sped up history loading by reversing list before processing entries.

	* History.subproj/IFWebHistoryPrivate.m:
	(+[IFWebHistoryPrivate initialize]): Register default for age limit.
	(-[IFWebHistoryPrivate _ageLimitDate]): New convenience method, returns a date older
	than any history entry that should be stored/loaded.
	(-[IFWebHistoryPrivate arrayRepresentation]): skip too-old dates.
	(-[IFWebHistoryPrivate _loadHistoryGuts:]), (-[IFWebHistoryPrivate _saveHistoryGuts:]):
	Broke into separate methods to make timing wrapper less messy. Respect age limit.
	Report number of items saved/loaded in timing message.
	(-[IFWebHistoryPrivate loadHistory]), (-[IFWebHistoryPrivate saveHistory]):
	use broken-out _guts methods.
	* WebKit.pbproj/project.pbxproj: version wars


git-svn-id: svn://svn.chromium.org/blink/trunk@772 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-18 17:40:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b0b267f4d20b703791e1157f61fc4c8e83c5b98a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lf01s2m5v75wyo', 1, e'	* src/kdelibs/khtml/rendering/render_list.cpp: (RenderListItem::setStyle):
        Fix a leak (missing delete).

	* src/kwq/KWQMetrics.h:
	* src/kwq/KWQFontMetrics.mm:
        (-[KWQLayoutInfo drawString:atPoint:withFont:color:]): Don\'t bother keeping things
        around that we only need to use once.
	(-[KWQLayoutInfo _initializeCaches]): Create them here instead.
        (-[KWQLayoutInfo dealloc]): Don\'t need to free them here.


git-svn-id: svn://svn.chromium.org/blink/trunk@861 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-26 21:40:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7f185121d015481af90d516a3c15b7dcd9554263');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lg01s2eebmlmr0', 1, e'Testing cvs mail.


git-svn-id: svn://svn.chromium.org/blink/trunk@860 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:38:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b94050206e9e1545eee8ba3e785f2fe80dc734a2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lh01s2daawjzw3', 1, e'Testing cvs mail.


git-svn-id: svn://svn.chromium.org/blink/trunk@859 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:29:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f1c588e7861f77b50400b721cabd4e2980c353c5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00li01s2rto0ujny', 1, e'Testing cvs mail.


git-svn-id: svn://svn.chromium.org/blink/trunk@858 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:27:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c380f29a9466dc27cdbf794b5f330eb1b6acc0a4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lj01s2yk5g9utk', 1, e'Testing commit emails.


git-svn-id: svn://svn.chromium.org/blink/trunk@857 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:15:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dfc8126a47d317df3a42341b1710bd5c064cfa3d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lk01s2en96ipdb', 1, e'Testing cvs mail...


git-svn-id: svn://svn.chromium.org/blink/trunk@856 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:02:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1146aab0b49f678fb81feedce92fefbb0ddc8fe6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00ll01s2roee1g55', 1, e'Testing cvs mail...


git-svn-id: svn://svn.chromium.org/blink/trunk@855 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 21:00:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6e37029b90be54d331b1ef7796ec9ad153ced69c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lm01s2gy1zugq6', 1, e'	* Misc.subproj/IFError.m: (+[IFError initialize]): Fix a typo where
        we said "unvailable".

	* WebView.subproj/IFPreferences.mm: (+[IFPreferences load]): Change
        the default sans-serif font to "Lucida Grande" to match the OS X
        system font, and also make that the defalt standard font.


git-svn-id: svn://svn.chromium.org/blink/trunk@854 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-26 20:28:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1c3ef9c17893f53878d0377dfb862536345ff8bd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00ln01s2sefg4g3v', 1, e'	* src/kwq/KWQFontMetrics.mm: (-[KWQLayoutInfo dealloc]): Free the
        style groups, styles, and glyph vectors.

	* src/kwq/KWQFont.mm: (QFont::getFont): Use default font if we can\'t
        find a font from the passed-in family. Before, we were raising an
        exception and quitting the application.

	* src/kwq/KWQCString.mm: (QCString::isEmpty): Faster version that
        doesn\'t call strlen.


git-svn-id: svn://svn.chromium.org/blink/trunk@853 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-26 20:20:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a696ab76ec9a0d8276eae2f43342428062107c91');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mp01s267bhb1t2', 1, e'	Private preferences.


git-svn-id: svn://svn.chromium.org/blink/trunk@876 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-28 03:36:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cef9f391e6b6b3db662aefe030b9d661476c0ad1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lo01s2xlmg8xlt', 1, e'2002-03-26  Kenneth Kocienda  <kocienda@apple.com>

        Moved a constant that need not be visible externally into the .m file.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.h:

        Protocol handlers are now given an opportunity to act upon an object that
        will be returned from cache. This is so that things like cached HTTP
        response headers can be set properly.

        I also added some code to check to see if a cached object needs revalidation
        as described the HTTP RFC sections on caching. This is not fully implemented
        yet, but the support for revalidation is better than it was.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        performHTTPHeaderRead:]), (-[IFHTTPURLProtocolHandler willReturnCacheObject:]),
        (-[IFHTTPURLProtocolHandler cacheObjectIsValid:]), (-[IFHTTPURLProtocolHandler
        cacheObjectRequiresRevalidation:]), (-[IFHTTPURLProtocolHandler
        shouldCacheResourceData]):

        Added a version field that will allow the cache to tell when incompatible
        changes have been made to the cache format.

        * CacheLoader.subproj/IFURLCacheObject.h:
        * CacheLoader.subproj/IFURLCacheObject.m: (-[IFURLCacheObject initWithCoder:]),
        (-[IFURLCacheObject encodeWithCoder:]):

        Added support for more sophisticated cache checking, using the new protocol
        handler methods.

        * CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad returnCacheObject:]),
        (+[IFURLLoad IFURLLoadCacheCheckerRun:]):

        Cached attributes are now returned properly from memory cached objects.

        * CacheLoader.subproj/IFURLMemoryCache.m:

        Changed name of isValidCacheObject: method to willReturnCacheObject:
        Added new cacheObjectRequiresRevalidation: method.

        These now support improved cache checking and object validation

        * CacheLoader.subproj/IFURLProtocolHandler.h:
        * CacheLoader.subproj/IFURLProtocolHandler.m: (-[IFURLProtocolHandler
        willReturnCacheObject:]), (-[IFURLProtocolHandler cacheObjectIsValid:]),
        (-[IFURLProtocolHandler cacheObjectRequiresRevalidation:]):

        Added nil check for returned cache object

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase objectForKey:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@852 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-26 19:22:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b932d3360af2ac0e6db7d8ebfb31658266c53ac9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lp01s2z8pvw4xa', 1, e'	* WebKit.pbproj/project.pbxproj:
	Marked IFProgress.h Public.


git-svn-id: svn://svn.chromium.org/blink/trunk@851 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-26 19:22:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7ab4a2be8bdfc96d03da1227e62289ee5518df4b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lq01s2ssvn7kyu', 1, e'	Broke IFLoadProgress out into its own file, and added
	an init method and getters, without which this class
	is useless in Objective-C files (but strangely usable
	in Objective-C++ files, see radar 2887253).

	* WebView.subproj/IFWebController.h:
	* WebView.subproj/IFBaseWebController.mm:
	Took IFLoadProgress declaration and implementation out of here.

	* WebView.subproj/IFLoadProgress.h,
	* WebView.subproj/IFLoadProgress.mm:
	Moved IFLoadProgress declaration and implementation to here;
	added -[IFLoadProgress initWithBytesSoFar:totalToLoad:type:]
	and getters for each field.

	* WebKit.pbproj/project.pbxproj: Updated for new files


git-svn-id: svn://svn.chromium.org/blink/trunk@850 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-26 05:31:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/217cd1838d961e65a283a920fa0fbfd5cebd33e0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lr01s25nvfqbqy', 1, e'        Removed conditional check that prevent layout of iframes.  I don\'t
        understand why the check was being done.

        Tweaks to force layout of frames and iframes.


git-svn-id: svn://svn.chromium.org/blink/trunk@849 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-26 02:52:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5cce9319f318ad296efc1817718dbd97a7ca9427');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00ls01s26o47t37a', 1, e'WebFoundation:
	* CacheLoader.subproj/IFURLHandle.m (-[IFURLHandle
	initWithURL:attributes:flags:]): Instantiate the right concrete
	subclass.
WebCore:
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::slotData): Use
	-[IFURLHandle characterSet] to get the character set, instead of
	parsing it out of the header by hand.
WebKit:
	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource
	_startLoading:]): Just create an IFURLHandle, since it now creates
	the proper concrete subclass automagically.


git-svn-id: svn://svn.chromium.org/blink/trunk@847 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-26 01:40:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5c96128547758ca1bf3a7610252d4a53fc627305');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lt01s2a1a3p7q9', 1, e'        * MIME.subproj/IFMIMEDatabase.m: (+[IFMIMEDatabase sharedMIMEDatabase]),
        (-[IFMIMEDatabase MIMEHandlerForMIMEType:]), (setMimeHandlers):
        * MIME.subproj/IFMIMEHandler.h:
        * MIME.subproj/IFMIMEHandler.m: (-[IFMIMEHandler
        initWithMIMEType:handlerType:handlerName:]), (-[IFMIMEHandler MIMEType]),
        (-[IFMIMEHandler MIMESupertype]), (-[IFMIMEHandler MIMESubtype]),
        (-[IFMIMEHandler handlerName]), (-[IFMIMEHandler handlerType]), (-[IFMIMEHandler
        description]):

        Initial implementation of the above.

        Also recommitted the TestPlugin


git-svn-id: svn://svn.chromium.org/blink/trunk@846 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-26 00:06:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d166555a49c0dfecf65824e04843d70dc7a609fc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lu01s2zvbkbnzj', 1, e'        Added private API to allow browser to access the DOM tree.
        Added support for the "View BOM Tree" menu.


git-svn-id: svn://svn.chromium.org/blink/trunk@845 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-25 23:59:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8828624dd5da29f6e89e2469af689ced95af9822');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lv01s2tc8mz50l', 1, e'        Added support for the "View Render Tree" menu.
i        Added private API to allow browser to access the render tree.


git-svn-id: svn://svn.chromium.org/blink/trunk@844 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-25 22:18:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c5ba2b0f5910fd87fb0c739ffc7395550f81cc16');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lw01s2prxdae0i', 1, e'2002-03-25  Kenneth Kocienda  <kocienda@apple.com>

        Disk cache now has accessor for path on disk

        * CacheLoader.subproj/IFURLDiskCache.h:
        * CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache path]):

        Fixed bug introduced in lazy cache code. This simple typo quite effectively
        prevented data from being written out to disk.

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase setObject:forKey:]),
        (-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase
        performSetObject:forKey:]):
        * WebFoundation.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@843 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-25 20:02:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/389be660a807b3a2b84b124147ed0c827cf534f5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lx01s2xiko4a7n', 1, e'2002-03-25  Kenneth Kocienda  <kocienda@apple.com>

        Fix for this bug:

        Radar 2867562 (Disk cache should write new entries lazily)

        * Database.subproj/IFURLFileDatabase.h:
        * Database.subproj/IFURLFileDatabase.m: (+[IFURLFileDatabaseOp
        opWithCode:key:object:]), (-[IFURLFileDatabaseOp initWithCode:key:object:]),
        (-[IFURLFileDatabaseOp opcode]), (-[IFURLFileDatabaseOp key]),
        (-[IFURLFileDatabaseOp object]), (-[IFURLFileDatabaseOp perform:]),
        (-[IFURLFileDatabaseOp dealloc]), (-[IFURLFileDatabase initWithPath:]),
        (-[IFURLFileDatabase dealloc]), (-[IFURLFileDatabase setTimer]),
        (-[IFURLFileDatabase setObject:forKey:]), (-[IFURLFileDatabase
        removeObjectForKey:]), (-[IFURLFileDatabase removeAllObjects]),
        (-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase
        performSetObject:forKey:]), (-[IFURLFileDatabase performRemoveObjectForKey:]),
        (-[IFURLFileDatabase lazySync:]), (-[IFURLFileDatabase sync]):
        * WebFoundation.pbproj/project.pbxproj:

        Simple fix to remove Objective-C include when compiling with
        a straight C compiler.

        * CacheLoader.subproj/IFURLCacheLoaderConstants.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@840 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-25 17:45:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cee12c8a42995862398cb69ee0308790a3cae273');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00ly01s2s5xuf993', 1, e'	Improved KURL performance:

	* src/kwq/kdecore/kurl.h, src/kwq/KWQKURL.mm:
	(KURL::normalizeURLString): New function to cache rewritten URL
	strings.
	(RelativeURLKeyRetainCallBack, RelativeURLKeyReleaseCallBack,
	RelativeURLKeyCopyDescriptionCallBack,
	RelativeURLKeyEqualCallBack, RelativeURLKeyHashCallBack,
	KURL::normalizeRelativeURLString): Cache results of relative URL
	resolution.
	(KURL::clearCaches): function to clear the caches so they don\'t
	grow forever.
	(KURL::KURL): Set nothing but the string at construction time.
	(KURL::isEmpty, KURL::isMalformed, KURL::hasPath, KURL::url,
	KURL::protocol, KURL::host, KURL::port, KURL::pass, KURL::user,
	KURL::ref, KURL::query, KURL::path, KURL::setProtocol,
	KURL::setHost, KURL::setPort, KURL::setRef, KURL::setQuery,
	KURL::setPath, KURL::prettyURL, KURL::copyOnWrite, KURL::parse,
	KURL::assemble): Parse into parts on demand instead.
	(KURL::swap, KURL::operator=): Handle KURL\'s new urlString field.

	* src/kwq/KWQKloader.mm: (Cache::requestImage, Cache::requestStyleSheet,
	Cache::requestScript): Don\'t redundantly check if KURL isMalformed.

	* src/kwq/KWQKHTMLPart.mm (KHTMLPart::end): Clear KURL caches at
	the end of each page load.


git-svn-id: svn://svn.chromium.org/blink/trunk@839 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-25 12:18:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/14a29f35393c53162ba7fcef04efda98cec2f7df');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00lz01s2v5u0tnlf', 1, e'	* src/kwq/KWQListImpl.mm: (KWQListImpl::getFirst), (KWQListImpl::getLast):
        Apparently getLast needs to handle cases where the list is empty. Since
        getFirst didn\'t handle it either, I added a check in both cases.


git-svn-id: svn://svn.chromium.org/blink/trunk@836 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-25 06:19:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8c4b70455a5e71176844cf86e19dc670e2f567a6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m001s2ppjptv8k', 1, e'        Add tail pointer to KWQListImpl, since that shows up on so many profiles.

	* src/kwq/KWQListImpl.mm: (KWQListImpl::KWQListPrivate::copyList): Return
        a tail pointer too.
	(KWQListImpl::KWQListPrivate::KWQListPrivate): Set up tail pointer.
        (KWQListImpl::clear): Clean tail pointer too.
	(KWQListImpl::at): Special case the tail so we don\'t walk the whole list
        when we ask for the last element.
        (KWQListImpl::insert): Update the tail node to when inserting. Also add
        a special case for adding at the end so we don\'t walk the whole list.
        (KWQListImpl::remove): Update the tail node. Also, use at() in the index-
        based remove so we don\'t ahve to replicate the logic about finding a
        node with the special case for the tail.
	(KWQListImpl::getLast): Trivial now.
        (KWQListImpl::last): Trivial now.
	(KWQListIteratorImpl::toLast): Trivial now.

	* src/kwq/KWQString.mm: (QString::operator=): Remove unneeded line of code.


git-svn-id: svn://svn.chromium.org/blink/trunk@835 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-24 23:06:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/21fc7c092a730787690922424a23accc46a4e704');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m101s2ai8z4jli', 1, e'        A number of fixes to support non-latin1 decoding
        and font measurement/drawing.

        Changed data source to create IFURLHandle of the appropriate class.
        The prevented us from getting the response headers correctly.


git-svn-id: svn://svn.chromium.org/blink/trunk@834 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-24 22:48:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/65e105479a2679528e4f355207e83ff7865002c5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m201s23z2m8rbv', 1, e'        Merged kdelibs from KDE 3.0 RC 3 into our 3.0 beta 2-based sources.


git-svn-id: svn://svn.chromium.org/blink/trunk@830 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-24 22:23:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/72befab5ad716462440494a421a4790a7ff4286c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m301s2ibjo4le2', 1, e'        Cached available families from NSFontManager.
        http://www.gamespy.com/gdc2002/okamoto went from 4.8 seconds
        to 0.7 seconds. [Do we need to worry about updating the cache if
        the available fonts change?]


git-svn-id: svn://svn.chromium.org/blink/trunk@824 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-24 19:49:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bde35964254c15fba3ae3878467eb5f2de01fcbb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m401s263dbibpr', 1, e'        Removed erroneous comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@823 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-24 18:53:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/94f3687fede91c44edb2a8478c8e25b598f85558');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m501s22ajt5rqq', 1, e'        Fixed big leak in QString assignment operator.
        Updated comments.  Removed old fprintfs.
        Added some frame debugging logs.


git-svn-id: svn://svn.chromium.org/blink/trunk@822 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-24 17:47:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8ec80f282216683ae3c2cfeb91b4b675bb9bac7d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m601s2fjdn2asv', 1, e'        Fixed problem with extra empty items in menus.

	* src/kwq/KWQComboBox.mm: (QComboBox::insertItem): Add back logic that puts
        an item in a certain position. Even though this is called insertItem, the
        behavior is to replace an item at a certain position.
	* src/kwq/KWQKComboBox.mm: (KComboBox::setSize): No need to fill the
        array with empty strings; just a waste of time based on how we do things.


git-svn-id: svn://svn.chromium.org/blink/trunk@821 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-23 21:39:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a23cf8c3e130bd1a131d251583530574f1776a1d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m701s2ze80zsfx', 1, e'        * src/kdelibs/khtml/java/Makefile.am:
        * src/kdelibs/khtml/java/tests/.cvsignore:
        * src/kdelibs/khtml/java/tests/Makefile.am:
        Remove empty test subdirectory.

        * src/kdelibs/kjs/.cvsignore: Ignore kjs-test output.


git-svn-id: svn://svn.chromium.org/blink/trunk@820 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-23 00:31:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e665afa6df083677b891b6ab342b25675e2622d1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvtmb00m801s2l9s0s5q8', 1, e'        * MIME.subproj/IFMIMEDatabase.h:
        Added a list of mime type that WebKit will be capable of handling


git-svn-id: svn://svn.chromium.org/blink/trunk@819 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-23 00:29:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ae0ce2391788b71db5cd2b0e9ad8dec2467a7d9b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00m901s2ghx1sfvm', 1, e'
        Hooked up redirect.  Now we see many more ads.  :(
        Fixed cancel of main handle for document.
        Moved stop before start from frame to data source.

        Hooked up redirect.


git-svn-id: svn://svn.chromium.org/blink/trunk@897 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 19:35:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8fb4a583ed572f09989b2fb0eb4e3c4cdb1065c9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00ma01s24szvtsop', 1, e'        Added stopLoading to startLoading to cancel any pending loads before
        new loads start.  This doesn\'t work yet because of loader bugs, but will
        once those are fixed.

        Adding logging for redirects.


git-svn-id: svn://svn.chromium.org/blink/trunk@891 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 18:13:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dfb7cf874aa88f7193ae6254ccc26492b943085a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mb01s2k0ktn3ho', 1, e'2002-03-29  Kenneth Kocienda  <kocienda@apple.com>

        Added exception handling to the code that reads cache files from
        disk. This should isolate the application from exiting when
        an exception is thrown by NSArchiver in its efforts to unarchive
        cache files.

        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileDatabase objectForKey:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@890 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-29 17:53:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ebde2ace07e487447f16eab91524d9cfc76a41f1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mc01s2ro5vg0za', 1, e'	* WebView.subproj/IFWebFramePrivate.mm: (-[IFWebFramePrivate dealloc]): Deref the
        renderFramePart, and autorelease the provisionalDataSource.
	(-[IFWebFramePrivate setRenderFramePart:]): Ref renderFramePart while we hold it.


git-svn-id: svn://svn.chromium.org/blink/trunk@889 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-29 17:12:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/70d8d81479164ce2f387418421437e9a9370a3ff');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00md01s28pqrxe80', 1, e'2002-03-29  Kenneth Kocienda  <kocienda@apple.com>

        Workaround for Radar 2890624 (Double free of image data in QPixmap)
        This hack is necessary for the app to run on some Jaguar system. Otherwise
        images that the GIF library cannot decode will cause a crash.

        * src/kwq/KWQPixmap.mm: (QPixmap::QPixmap):


git-svn-id: svn://svn.chromium.org/blink/trunk@888 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-29 16:51:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3490163278dc9db0c6a3b6feea1abc10819aa720');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00me01s2sl5v0uyp', 1, e'        Fixed basic font horkage caused by removal of KDE font matching code.  We
        now work correctly for the basic font families.

        Increased size default for initial layout.


git-svn-id: svn://svn.chromium.org/blink/trunk@887 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 05:43:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/36e4a7c4a71d7ab72e347d00df99960deed8d8bb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mf01s2ptpw8o8r', 1, e'        Fixed big leak of any document that had a frame or iframe.


git-svn-id: svn://svn.chromium.org/blink/trunk@886 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 03:29:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c73d3ffecea8ec12d9204c7b2e89f613fdf64080');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mg01s29eveis2k', 1, e'        Modified the initial layout policy.


git-svn-id: svn://svn.chromium.org/blink/trunk@885 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 01:44:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b4f30f64563742c5d6b73df8f987af92a85ea097');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mh01s24g76y1fc', 1, e'	* src/kwq/KWQKloader.mm: (Cache::requestImage), (Cache::requestStyleSheet),
	(Cache::requestScript): Set flags so the objects get freed when they are done
        in cases where the cache is disabled.


git-svn-id: svn://svn.chromium.org/blink/trunk@884 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-29 01:13:14.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa84cfa6addb008aed362c34371bc28c663d0054');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mi01s2b798o2p5', 1, e'Top level:
	Fix the regression tests:

	* Tests/WebFoundation-Misc/ifnsthreadextensions-test.chk,
	Tests/WebFoundation-Misc/ifnsthreadextensions-test.m:
	(-[ThreadTest run:], main): Don\'t

	* Tests/harness.c: (runtest): Make leaks count as failures again.

	* Tests/libiftest/IFCheckLeaks.c: (IFCheckLeaksAtExitHandler):
	Exclude the leak in +[NSUserDefaults standardDefaults]

	* Tests/qt/qlist-test.chk, Tests/qt/qlist-test.cpp: (main): Fix a
	leak in this test program.

	* Tests/test.list: Fix path to JavaScript test.
JavaScriptCore:
	* kjs/kjs-test.chk: Update output for new test results.


git-svn-id: svn://svn.chromium.org/blink/trunk@883 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-29 01:10:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6fd7083edf40cb9c0506b56dcb39203170de3354');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mj01s2k3skpeto', 1, e'	Fix Radar 2890340 (JavaScript doesn\'t work)

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::executeScript): Implement
	the other overloaded version of this function. This is needed for
	JavaScript to work.


git-svn-id: svn://svn.chromium.org/blink/trunk@882 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-29 00:50:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0558a53c924f3c2057c1b4639bfe5768a1cfb324');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mk01s2tgno49hm', 1, e'        New private interface for getting at the cache.

	* Misc.subproj/IFCache.h: New.
	* Misc.subproj/IFCache.mm: New.
	* WebKit.pbproj/project.pbxproj: Added IFCache files.


git-svn-id: svn://svn.chromium.org/blink/trunk@881 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 23:18:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/889b507c947eba4567bb4080f61570cf226cb165');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00ml01s2sn8ddjme', 1, e'	* src/kdelibs/khtml/misc/loader.h: Added API for looking at the contents of the
        cache, flushing the cache, and disabling the cache.
	* src/kwq/KWQKloader.mm: (Cache::requestImage): Don\'t cache if disabled.
        (Cache::requestStyleSheet): Don\'t cache if disabled.
	(Cache::requestScript): Don\'t cache if disabled.
        (Cache::flush): Simplify ifdefs.
        (Cache::getStatistics), (Cache::flushAll), (Cache::setCacheDisabled): New.


git-svn-id: svn://svn.chromium.org/blink/trunk@880 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 23:17:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/37d8a0106d6e498fb4399ab8a1097210e7c5ab4e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mm01s2nei9oxu7', 1, e'	* WebView.subproj/IFBaseWebController.mm:
        (-[IFBaseWebController locationChangeDone:forFrame:]): Remove log of errors
        loading now that we have the activity viewer.


git-svn-id: svn://svn.chromium.org/blink/trunk@879 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 19:12:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/384cc8a2404fc0994eed0dbf2b1e9ef96434ad8d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mn01s26hb5t8zo', 1, e'        Modified the initial layout policy.  We now try to layout as close
        as possible to WebKitInitialTimedLayoutDelay seconds after the
        load was started, not after the provisional-to-committed transition.
        If the time to the provisional-to-committed transition exceeds
        WebKitInitialTimedLayoutDelay we layout immediately.

        Fixed crasher.  Removed unnecessary cleanup to widget that was called after the
        widget was already disposed.


git-svn-id: svn://svn.chromium.org/blink/trunk@878 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-28 19:03:28.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6e6623b66ca2a92bf6594394349f37f4edded92d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mo01s2v7qlfnhu', 1, e'	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate _loadHistoryGuts:]):
	Made this more robust about bad data from the disk file. I
	don\'t know how bad data could get into the disk file in normal
	use, but it seems to have happened to Richard.

	* AppController.m: (-[AppController menuTitleForURL:withTitle:]),
	(-[AppController _menuTitleForURIEntry:]), (-[AppController
	insertHistoryEntry:intoMenu:atIndex:]): Added asserts in various
	places to catch bad callers earlier.


git-svn-id: svn://svn.chromium.org/blink/trunk@877 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-03-28 17:36:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e527bda586245bbb9e675fa5291dd64fd3567ff6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mq01s2f3kiu3e4', 1, e'        Added initial-layout-after-delay-if-not-layed-out-yet feature.

        Turned on live layout when font size or type is changed.

        Removed problematic code.  Not sure why it was necessary.  For now
        it prevents crasher.


git-svn-id: svn://svn.chromium.org/blink/trunk@875 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-28 03:35:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7b1392ce4a5d275f7ca658ff71c3bcebb8c42aca');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mr01s2t2uu8rns', 1, e'	* src/kwq/KWQListImpl.mm: (KWQListImpl::insert): Fix disastrous name
        collision which could lead to infinite loops.


git-svn-id: svn://svn.chromium.org/blink/trunk@874 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 01:25:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cd39dc17b813094108426a5ac6c43f62d65cf114');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00ms01s2am4j8swp', 1, e'	* src/kwq/KWQCString.mm: (QCString::isEmpty): The || should be &&.


git-svn-id: svn://svn.chromium.org/blink/trunk@873 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 01:11:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/597dac308e4fb883bbce7aa53ec39289d0160948');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mt01s2q0sw81qz', 1, e'	* src/kdelibs/khtml/css/css_valueimpl.cpp:
	(FontFamilyValueImpl::FontFamilyValueImpl): Disable misguided font matching
        code in khtml.

	* src/kwq/KWQFont.mm: (QFont::getFont): Change the fallback so that it uses
        the default font family, but the other settings as requested, rather than
        using the default font.


git-svn-id: svn://svn.chromium.org/blink/trunk@872 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-28 00:55:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7f711b9541e93e6a005617a4aa383f13c951fc09');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mu01s2vsz9huhu', 1, e'2002-03-27  Kenneth Kocienda  <kocienda@apple.com>

        Changed loadProgress->bytesSoFar to use [sender contentLengthReceived]
        instead of the size of the chunk that was delivered in the callback.
        This makes the activity window data more correct than it was.

	WebCore:

        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        IFURLHandle:resourceDataDidBecomeAvailable:]):


	WebKit:

        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        IFURLHandle:resourceDataDidBecomeAvailable:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@871 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-27 21:54:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0aced9ac980dac87f7ce96ec19cdf9ecd1ea4b0f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mv01s2tejrbfgo', 1, e'2002-03-27  Chris Blumenberg  <cblu@apple.com>

        Now setting the modifier bit for the activate and cursor events.

        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView drawRect:]), (-[IFPluginView
        windowBecameKey:]), (-[IFPluginView windowResignedKey:]), (-[IFPluginView
        mouseEntered:]), (-[IFPluginView mouseExited:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@870 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-03-27 21:52:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e0c7e52979f5b3f32822e48116eb17d023beb671');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mw01s236hfnos3', 1, e'	* NSStringBrowserAdditions.m: (+[NSString urlStringWithUserTypedString:]):
        Add ".com" to the end if there\'s no ".". Add "file:" to the beginning if the
        thing begins with a "/".

	* Preferences.subproj/TextPreferences.m:
        (-[TextPreferences initializeFromDefaults]): Switch back to serif font, since
	using Luicida Grande was exposing some font bugs.

	* WebView.subproj/IFPreferences.mm: (+[IFPreferences load]): Switch back
        to serif font, since using Luicida Grande was exposing some font bugs.


git-svn-id: svn://svn.chromium.org/blink/trunk@868 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-27 16:23:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eac3ea5eed26d4c2cf1d3495d96cc09baf8314d6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mx01s23nqcn8pg', 1, e'	* src/kdelibs/khtml/ecma/Makefile.am: Get the create_hash_table tool
        from JavaScriptCore. We might need a better way to handle this later.


git-svn-id: svn://svn.chromium.org/blink/trunk@867 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-27 15:59:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d8ccda244f5c9e03396cc5503827f9c1d1599849');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00my01s2pqyqjv0o', 1, e'top level:
	* configure.in: Remove WebCore/src/kjs and add JavaScriptCore to
	build.
JavaScriptCore:
	Set up kjs to build by itself into libJavaScriptCore.dylib.

	* .cvsignore: Added.
	* Makefile.am: Added.
	* dummy.cpp: Added.
	* kjs/.cvsignore: Added.
WebCore:
	Removed kjs from here - it\'s now been moved to JavaScriptCore at
	the top level.

	* src/Makefile.am: Don\'t link libkjs.o.
	* src/kdelibs/Makefile.am: Remove kjs from subdirs.
	* src/kdelibs/kjs/.cvsignore: Removed.
	* src/kdelibs/kjs/Makefile.am: Removed.
	* src/kdelibs/kjs/array_object.cpp: Removed.
	* src/kdelibs/kjs/array_object.h: Removed.
	* src/kdelibs/kjs/bool_object.cpp: Removed.
	* src/kdelibs/kjs/bool_object.h: Removed.
	* src/kdelibs/kjs/collector.cpp: Removed.
	* src/kdelibs/kjs/collector.h: Removed.
	* src/kdelibs/kjs/create_hash_table: Removed.
	* src/kdelibs/kjs/date_object.cpp: Removed.
	* src/kdelibs/kjs/date_object.h: Removed.
	* src/kdelibs/kjs/debugger.cpp: Removed.
	* src/kdelibs/kjs/debugger.h: Removed.
	* src/kdelibs/kjs/error_object.cpp: Removed.
	* src/kdelibs/kjs/error_object.h: Removed.
	* src/kdelibs/kjs/function.cpp: Removed.
	* src/kdelibs/kjs/function.h: Removed.
	* src/kdelibs/kjs/function_object.cpp: Removed.
	* src/kdelibs/kjs/function_object.h: Removed.
	* src/kdelibs/kjs/grammar.y: Removed.
	* src/kdelibs/kjs/internal.cpp: Removed.
	* src/kdelibs/kjs/internal.h: Removed.
	* src/kdelibs/kjs/interpreter.cpp: Removed.
	* src/kdelibs/kjs/interpreter.h: Removed.
	* src/kdelibs/kjs/keywords.table: Removed.
	* src/kdelibs/kjs/kjs-test: Removed.
	* src/kdelibs/kjs/kjs-test.chk: Removed.
	* src/kdelibs/kjs/lexer.cpp: Removed.
	* src/kdelibs/kjs/lexer.h: Removed.
	* src/kdelibs/kjs/lookup.cpp: Removed.
	* src/kdelibs/kjs/lookup.h: Removed.
	* src/kdelibs/kjs/math_object.cpp: Removed.
	* src/kdelibs/kjs/math_object.h: Removed.
	* src/kdelibs/kjs/nodes.cpp: Removed.
	* src/kdelibs/kjs/nodes.h: Removed.
	* src/kdelibs/kjs/nodes2string.cpp: Removed.
	* src/kdelibs/kjs/number_object.cpp: Removed.
	* src/kdelibs/kjs/number_object.h: Removed.
	* src/kdelibs/kjs/object.cpp: Removed.
	* src/kdelibs/kjs/object.h: Removed.
	* src/kdelibs/kjs/object_object.cpp: Removed.
	* src/kdelibs/kjs/object_object.h: Removed.
	* src/kdelibs/kjs/operations.cpp: Removed.
	* src/kdelibs/kjs/operations.h: Removed.
	* src/kdelibs/kjs/property_map.cpp: Removed.
	* src/kdelibs/kjs/property_map.h: Removed.
	* src/kdelibs/kjs/regexp.cpp: Removed.
	* src/kdelibs/kjs/regexp.h: Removed.
	* src/kdelibs/kjs/regexp_object.cpp: Removed.
	* src/kdelibs/kjs/regexp_object.h: Removed.
	* src/kdelibs/kjs/string_object.cpp: Removed.
	* src/kdelibs/kjs/string_object.h: Removed.
	* src/kdelibs/kjs/test.js: Removed.
	* src/kdelibs/kjs/testkjs.cpp: Removed.
	* src/kdelibs/kjs/types.cpp: Removed.
	* src/kdelibs/kjs/types.h: Removed.
	* src/kdelibs/kjs/ustring.cpp: Removed.
	* src/kdelibs/kjs/ustring.h: Removed.
	* src/kdelibs/kjs/value.cpp: Removed.
	* src/kdelibs/kjs/value.h: Removed.
WebKit:
	* WebKit.pbproj/project.pbxproj: Fixed to build with standalone
	libJavaScriptCore.dylib.
WebBrowser:
	* WebBrowser.pbproj/project.pbxproj: Include libJavaScriptCore.dylib


git-svn-id: svn://svn.chromium.org/blink/trunk@866 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-27 04:19:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/92d370748e623ceffd607591b848595d57557074');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00mz01s27byv0r7d', 1, e'Top level:
	Removed all the borrowed Qt code.

	* Makefile.am: Don\'t bother to reconfigure when ChangeLog changes.
	* acconfig.h: Remove BORROWED #defines.
	* borrowed-classes.txt: Removed.
	* configure.in: Remove setting of unused flags.
WebCore:
	Removed all the borrowed Qt code.

	* src/kwq/KWQGlobal.mm: Renamed from qt/_qglobal.cpp to avoid
	confusion about the borrowedness status of this file.
	* src/kwq/Makefile.am: Removed references to kde and qt
	subdirectories.
	* src/kwq/kde/.cvsignore: Removed.
	* src/kwq/kde/Makefile.am: Removed.
	* src/kwq/kde/_kurl.cpp: Removed.
	* src/kwq/kde/_kurl.h: Removed.
	* src/kwq/qt/Makefile.am: Removed.
	* src/kwq/qt/_qarray.h: Removed.
	* src/kwq/qt/_qbuffer.cpp: Removed.
	* src/kwq/qt/_qbuffer.h: Removed.
	* src/kwq/qt/_qcollection.cpp: Removed.
	* src/kwq/qt/_qcollection.h: Removed.
	* src/kwq/qt/_qcolor.h: Removed.
	* src/kwq/qt/_qcstring.cpp: Removed.
	* src/kwq/qt/_qcstring.h: Removed.
	* src/kwq/qt/_qdatetime.cpp: Removed.
	* src/kwq/qt/_qdatetime.h: Removed.
	* src/kwq/qt/_qdict.h: Removed.
	* src/kwq/qt/_qdir.cpp: Removed.
	* src/kwq/qt/_qdir.h: Removed.
	* src/kwq/qt/_qdir_unix.cpp: Removed.
	* src/kwq/qt/_qfile.cpp: Removed.
	* src/kwq/qt/_qfile.h: Removed.
	* src/kwq/qt/_qfileinfo.cpp: Removed.
	* src/kwq/qt/_qfileinfo.h: Removed.
	* src/kwq/qt/_qfileinfo_unix.cpp: Removed.
	* src/kwq/qt/_qgarray.cpp: Removed.
	* src/kwq/qt/_qgarray.h: Removed.
	* src/kwq/qt/_qgdict.cpp: Removed.
	* src/kwq/qt/_qgdict.h: Removed.
	* src/kwq/qt/_qglist.cpp: Removed.
	* src/kwq/qt/_qglist.h: Removed.
	* src/kwq/qt/_qglobal.cpp: Removed.
	* src/kwq/qt/_qgvector.cpp: Removed.
	* src/kwq/qt/_qgvector.h: Removed.
	* src/kwq/qt/_qiodevice.cpp: Removed.
	* src/kwq/qt/_qiodevice.h: Removed.
	* src/kwq/qt/_qlist.h: Removed.
	* src/kwq/qt/_qmap.cpp: Removed.
	* src/kwq/qt/_qmap.h: Removed.
	* src/kwq/qt/_qpoint.cpp: Removed.
	* src/kwq/qt/_qpoint.h: Removed.
	* src/kwq/qt/_qptrdict.h: Removed.
	* src/kwq/qt/_qrect.cpp: Removed.
	* src/kwq/qt/_qrect.h: Removed.
	* src/kwq/qt/_qregexp.cpp: Removed.
	* src/kwq/qt/_qregexp.h: Removed.
	* src/kwq/qt/_qregion.cpp: Removed.
	* src/kwq/qt/_qregion.h: Removed.
	* src/kwq/qt/_qshared.h: Removed.
	* src/kwq/qt/_qsize.cpp: Removed.
	* src/kwq/qt/_qsize.h: Removed.
	* src/kwq/qt/_qsortedlist.h: Removed.
	* src/kwq/qt/_qstack.h: Removed.
	* src/kwq/qt/_qstring.cpp: Removed.
	* src/kwq/qt/_qstring.h: Removed.
	* src/kwq/qt/_qstringlist.cpp: Removed.
	* src/kwq/qt/_qstringlist.h: Removed.
	* src/kwq/qt/_qstrlist.h: Removed.
	* src/kwq/qt/_qtextcodec.h: Removed.
	* src/kwq/qt/_qtextstream.h: Removed.
	* src/kwq/qt/_qtl.h: Removed.
	* src/kwq/qt/_qurl.cpp: Removed.
	* src/kwq/qt/_qurl.h: Removed.
	* src/kwq/qt/_qvaluelist.h: Removed.
	* src/kwq/qt/_qvector.h: Removed.


git-svn-id: svn://svn.chromium.org/blink/trunk@865 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-27 00:54:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa6b4b8c0dccbfe93bdbff707796d2013b9ff816');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00n001s2lylq2fwn', 1, e'2002-03-26  Kenneth Kocienda  <kocienda@apple.com>

        These changes help the transition to the new build system which unifies
        our development build setting with the settings we use to ship
        releases.

        Labyrinth:

        Removed --enable-alexander-test configure option
        Added --with-buildstyle option

        * configure.in:


        WebFoundation:

        * WebFoundation.pbproj/project.pbxproj:


        WebKit:

        * Makefile.am:
        * WebKit.pbproj/kocienda.pbxuser:
        * WebKit.pbproj/project.pbxproj:


        WebBrowser:

        * Makefile.am:
        * WebBrowser.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@864 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-03-27 00:18:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d5430c62e4bc6ff791d931ed71ef3690bbb98f83');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00n101s2zgyim2lf', 1, e'	* src/kwq/KWQKjobclasses.mm: (TransferJobPrivate::TransferJobPrivate):
        Nil out the handle so we don\'t autorelease garbage.

	* src/kwq/KWQKloader.mm:
        (-[URLLoadClient IFURLHandleResourceDidCancelLoading:]),
	(-[URLLoadClient IFURLHandleResourceDidFinishLoading:data:]),
        (-[URLLoadClient IFURLHandle:resourceDidFailLoadingWithResult:]):
        Delete the job instead of just autoreleasing the sender. Fixes a leak.


git-svn-id: svn://svn.chromium.org/blink/trunk@863 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-26 23:06:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/122a418e092f25c25076b3f7b206b599d6e08815');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvvrq00n201s2wm2zv4m5', 1, e'i        Try to ensure that display needed bits are correctly set.

        Fixed leak of decoder.  This caused us to leak the entire
        document text for every load!


git-svn-id: svn://svn.chromium.org/blink/trunk@862 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-26 23:05:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2a3379da43aba492ecc889febf6ce3162a86726e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n301s2yirjyb57', 1, e'	* src/kwq/KWQKHTMLPart.mm (KHTMLPartPrivate::~KHTMLPartPrivate):
	Delete the jScript interpreter if it exists, to avoid leaking
	it. Also, garbage collect in this case because when we destroy the
	interpreter a lot of objects will become garbage and this seems
	like a good time to clean it all up.


git-svn-id: svn://svn.chromium.org/blink/trunk@930 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-02 07:16:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4d819efeb35111c9b83ae1a306e16a3f98a201af');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n401s2cdtxd74e', 1, e'        Added log to catch more problems with NS/CFURL.


git-svn-id: svn://svn.chromium.org/blink/trunk@929 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 06:01:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c585d0dacf5138c45d76a90ce3ed74e8263b4d38');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n501s2mk05psck', 1, e'        Cleaned up lots of potentially stale references to controller.
        Added ref count to part.


git-svn-id: svn://svn.chromium.org/blink/trunk@928 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 05:17:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/87e50ddaa9ac76f216b33674a72842b33a3c98f3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n601s2tbnmu735', 1, e'i        Logging changes.
        Changes to support correct i/frame behavior.

        Changes to support correct behavior is i/frame margins and
        scroll views.

        Changed method name.
        Support showing frames in render tree.  This isn\'t a direct reflection of the
        kde render tree.  I nest the render trees for each part.


git-svn-id: svn://svn.chromium.org/blink/trunk@927 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 03:32:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/091c94470982cb72b1f7589ba4421013aeb41255');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n701s213ytsmbn', 1, e'	Added method for updating url, title, and/or displayTitle
	on existing entry.

	* History.subproj/IFWebHistory.h:
	* History.subproj/IFWebHistory.m:
	(-[IFWebHistory	updateURL:title:displayTitle:forURL:]):
	Calls through to IFWebHistoryPrivate.

	* History.subproj/IFWebHistoryPrivate.h:
	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate _entryForURLString:]): Broke this out
	from containsURL.
	(-[IFWebHistoryPrivate containsURL:]): Call broken-out method.
	(-[IFWebHistoryPrivate updateURL:title:displayTitle:forURL:]):
	Find existing entry (if any), change its attributes.

	* BrowserDocument.m:
	(-[BrowserDocument displayName]): removed obsolete comment
	(-[BrowserDocument receivedPageTitle:forDataSource:]):
	update existing history entry; also use [NSArray makeObjectsPerformSelector]
	to simplify code.

	* BrowserWindow.m:
	(-[BrowserWindow updateTitle]): removed; unbeknownst to me, there
	was already a synchronizeWindowTitleWithDocumentName that did this
	same thing.
	(-[BrowserWindow frameLoadCommitted:]):
	use synchronizeWindowTitleWithDocumentName


git-svn-id: svn://svn.chromium.org/blink/trunk@926 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-02 01:03:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d787bca9654616267bf136e8e8006eeaa1912489');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n801s2xhy3y3d6', 1, e'	* Misc.subproj/IFError.h: Add the failing URL to IFError.
	* Misc.subproj/IFError.m: (-[IFError initWithErrorCode:]): Call through
	with nil for the URL.
	(-[IFError initWithErrorCode:failingURL:]): Retain the passed URL.
	(-[IFError dealloc]): Autorelease the URL.
	(-[IFError failingURL]): Return the URL.
	(-[IFError description]): Include the URL in the description.

	* WebView.subproj/IFBaseWebControllerPrivate.mm:
	(-[IFBaseWebController _receivedProgress:forResource:fromDataSource:]),
	(-[IFBaseWebController _mainReceivedProgress:forResource:fromDataSource:]):
	Put the URL into the IFError.

	* WebView.subproj/IFMainURLHandleClient.mm:
	(-[IFMainURLHandleClient IFURLHandle:resourceDidFailLoadingWithResult:]):
	Put the URL into the IFError.


git-svn-id: svn://svn.chromium.org/blink/trunk@925 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 23:49:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/11792e803ad4713f8a8da45091db2f52ed5968fa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00n901s21ywcphll', 1, e'2002-04-01  Kenneth Kocienda  <kocienda@apple.com>

        The guts of the fix for this bug:

        Radar 2879234 (Redirected URLs not used for subsequent GETs)

        This change, though small, will fix most of the outstanding problems
        with URL redirects. Some little bits of work need to be done, but much
        of that is on the UI level.

        * src/kwq/KWQKHTMLPart.mm: (KHTMLPart::begin), (KHTMLPart::setBaseURL):


git-svn-id: svn://svn.chromium.org/blink/trunk@924 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-01 21:59:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/581209800eb0a8f173af42eed7ba210d92ae4247');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00na01s22axi1ss0', 1, e'	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::jScriptEnabled): Hook this up to the
        preference from WebKit.
        (KHTMLPart::jScript): Return 0 if JavaScript is disabled. This is exactly what
        the original KHTMLPart from KDE did.


git-svn-id: svn://svn.chromium.org/blink/trunk@923 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 21:42:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7a04663aab93ffa2d9caa1c2f851ea940be3afbd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nb01s2awd6qbg0', 1, e'Made timing logs relative to start of document, not start of each data source.


git-svn-id: svn://svn.chromium.org/blink/trunk@922 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-01 21:00:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/869736f15e8a2ca610c0e19c267831f913dee475');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nc01s25fdc9qd3', 1, e'        Added more logging to show time of layouts.


git-svn-id: svn://svn.chromium.org/blink/trunk@921 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-01 20:46:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5361815f65dbb66321aa779ebd8c0fe866385e02');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nv01s2d0ghm74j', 1, e'        More fixes for cancelling.  Fixed some code that appears to have been
        mis-merged after the KDE 3 beta 2 landing.

        Fixes for cancelling.  Still need to think about a better
        solution than putting data sources in stopped mode.

        Temporary bandaid to get past extra release crasher.


git-svn-id: svn://svn.chromium.org/blink/trunk@899 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-29 23:05:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bb579f81c488297508f6b7eb90e28c0f0befbff8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nd01s2rk8gq9cj', 1, e'WebKit:

        Added operations for JavaScript objects. Not sure if this was the best
        place for them, but it should be OK for now.

        * Misc.subproj/IFCache.h:
        * Misc.subproj/IFCache.mm: (+[IFCache setDisabled:]), (+[IFCache
        javaScriptObjectsCount]), (+[IFCache garbageCollectJavaScriptObjects]):
        * WebKit.pbproj/project.pbxproj:

WebBrowser:

        Rearranged caches window, renamed it, and added stuff about
        JavaScript objects.

        * Debug/CacheController.h:
        * Debug/CacheController.mm: (-[CacheController windowDidLoad]),
        (-[CacheController emptyWebCoreCaches:]), (-[CacheController
        setStat:toKey:fromDict:]), (-[CacheController setTotal:fromDict:]),
        (-[CacheController refreshWebCoreStatisticsMatrix]), (-[CacheController
        refreshStatistics:]), (-[CacheController toggleDisableWebCoreCaches:]),
        (-[CacheController garbageCollectJavaScriptObjects:]):
        * Debug/CacheController.nib:
        * Debug/DebugUtilities.m: (+[DebugUtilities createDebugMenu]):


git-svn-id: svn://svn.chromium.org/blink/trunk@920 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 20:40:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dabef64fc114b665c750dbba4e4ab0726fa92ef9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00ne01s28rnoou0o', 1, e'JavaScriptCore:

        Got rid of KWQDef.h because it\'s dangerous to have two files with
        the same name and different contents.

	* JavaScriptCore.pbproj/project.pbxproj:
	* kjs/KWQDef.h: Removed.
	* kjs/ustring.h: Defines unsigned int types inline now.

WebCore:

	* src/kwq/KWQDef.h: Use KWQ_UNSIGNED_TYPES_DEFINED for compatibility with code
        in JavaScriptCore that has to do the same thing.


git-svn-id: svn://svn.chromium.org/blink/trunk@918 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 20:01:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/95ddf74a1cf533b74f23d0de7768d7d997ce05fa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nf01s24m6xhxeb', 1, e'	* src/kdelibs/khtml/khtmlview.cpp: (KHTMLView::restoreScrollBar): Disable code
        that checks if the scroll bar is visible, because it currently doesn\'t do us
        any good. We may want to turn it back on if we ever implement setVScrollBarMode.
	(KHTMLView::viewportWheelEvent): Disable this code for now since it requires
        access to the vertical scroll bar object.
	* src/kdelibs/khtml/rendering/render_form.cpp:
        (RenderTextArea::calcMinMaxWidth): Use our own verticalScrollBarWidth and
        horizontalScrollBarHeight rather than getting scroll bar widgets.

	* src/kwq/qt/qscrollview.h: Remove QScrollView::horizontalScrollBar() and
        QScrollView::verticalScrollBar(), since we don\'t have QWidgets to return for
        these two. We can re-add these later if we need to.

	* src/kwq/qt/qtextedit.h: Removed QMultiLineEdit, and QTextEdit() constructor.
	* src/kwq/kdeui/keditcl.h: Removed.
	* src/kwq/KWQTextEdit.mm: Remove unused functions.
	(QTextEdit::verticalScrollBarWidth), (QTextEdit::horizontalScrollBarHeight):
        Implement these two new ones.
	* src/kwq/KWQScrollView.mm: Remove unused functions.

	* src/kdelibs/khtml/rendering/render_form.cpp: Fixed spelling error.


git-svn-id: svn://svn.chromium.org/blink/trunk@917 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 17:42:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a23a5081d9cd2c7235e9f9bb01c3a1557d491071');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00ng01s2tsec7won', 1, e'        Added an icon for HotSpotFinder.

	* Tools/HotSpotFinder/HotSpotFinder.pbproj/project.pbxproj:
	* Tools/HotSpotFinder/noBikes.icns: Added.


git-svn-id: svn://svn.chromium.org/blink/trunk@916 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-01 17:05:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5828dafdf61428b662a94802c163b54d7ae1645a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nh01s2rv2t33ck', 1, e'	Fix Radar 2890464 (abcnews.com renders as a blank blue page (probably a JavaScript
	problem).) It turns out not to be a JavaScript problem:

	* src/kwq/KWQKloader.mm: (-[URLLoadClient
	IFURLHandle:resourceDidFailLoadingWithResult:]): Report that load
	is finished to KDE layers. Otherwise, the tokenizer will wait
	forever for a script load completion message that never comes.


git-svn-id: svn://svn.chromium.org/blink/trunk@915 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-01 00:06:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/646504a21b9c01711c246e1ca25ff2d9d2d8655c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00ni01s2yg6tek51', 1, e'2002-03-31  Ken Kocienda  <kocienda@apple.com>

        Labyrinth:

        Modified check file to correspond to new flow of control
        in the loader involving results returned from cache.

        * Tests/WebFoundation-CacheLoader/never-expires-test.chk:

        Tweaked output of dates

        * Tools/DiskCachePeek/DiskCachePeek.pbproj/project.pbxproj:
        * Tools/DiskCachePeek/main.m: (main):


        WebFoundation:

        Better handling of cases where a revalidated cache object is returned,
        including correct setting of headers and updating of cache object with revalidated
        results.

        The disk cache database now includes its own mmap code. Now, failed attempts to mmap a cache
        file return better result codes. This makes it possible for the cache
        to cut down on speculative disk I/O that had been necessary until now since
        the mmap code in Foundation does not report why an mmap attempt failed.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.h:
        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        initWithURLLoad:]), (+[IFHTTPURLProtocolHandler parseHTTPDateString:]),
        (-[IFHTTPURLProtocolHandler debugStringForCacheAttributeValue:]),
        (-[IFHTTPURLProtocolHandler createHTTPRequest]), (-[IFHTTPURLProtocolHandler
        cacheObjectIsValid:]), (-[IFHTTPURLProtocolHandler
        cacheObjectRequiresRevalidation:]), (-[IFHTTPURLProtocolHandler
        shouldCacheResourceData]), (-[IFHTTPURLProtocolHandler
        timeIntervalFromHTTPResponseHeader:]), (-[IFHTTPURLProtocolHandler
        calculateObjectAge]):
        * CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad succeeded]), (-[IFURLLoad
        shouldCacheResourceData]), (-[IFURLLoad didBeginLoading:]), (+[IFURLLoad
        IFURLLoadCacheCheckerRun:]):
        * Database.subproj/IFURLFileDatabase.m: (URLFileReaderInit), (-[IFURLFileReader
        initWithPath:]), (-[IFURLFileReader data]), (-[IFURLFileReader dealloc]),
        (-[IFURLFileDatabase objectForKey:]), (-[IFURLFileDatabase
        performSetObject:forKey:]), (-[IFURLFileDatabase performRemoveObjectForKey:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@912 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-01 00:01:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7825d07943c35bc8384f569b0293f608069a9821');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nj01s29owti39o', 1, e'	* src/kwq/KWQString.mm: (QString::toDouble): Fix to properly handle
        an empty string.


git-svn-id: svn://svn.chromium.org/blink/trunk@911 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-31 15:33:13.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9ca44161d2dfe28c5ab552ec0b5b44555968d0aa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nk01s2wduskywn', 1, e'	Fixed Radar 2891272 (JavaScript crashes loading quicktime.com and
	apple.com)

	* kjs/object.cpp: (ObjectImp::~ObjectImp): Don\'t call setGCAlloc
	on object internals pointed to, because they may have already been
	collected by the time this object is collected, and in that case
	we would corrupt the malloc arena.

	* Makefile.am: Make the stamp file depend on all the sources and
	headers so the framework gets rebuilt properly.

	* JavaScriptCore.pbproj/project.pbxproj: Some random numbers moved
	around. No idea what I really changed.


git-svn-id: svn://svn.chromium.org/blink/trunk@910 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-31 06:48:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/88328f8ce33ce39b3ad264ea76d2c96938668d21');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nl01s2m56opbo0', 1, e'        Corrected comments describing the new \'acceptable to layout\' state
        transition.


git-svn-id: svn://svn.chromium.org/blink/trunk@909 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-31 03:25:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d255515a851d8bbc56d19eb56d8371f8e0dfd2e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nw01s2bnz9b4y6', 1, e'	* src/kwq/KWQKloader.mm: (Cache::getStatistics), (Cache::flushAll):
        Fix both of these to work when cache is not yet allocated.


git-svn-id: svn://svn.chromium.org/blink/trunk@898 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-29 19:44:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3415f644de87a01d00afc2bbacca6fb4927360c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nm01s2ms5egtol', 1, e'	* prepare-ChangeLog: Added a new "--open" option, which opens the
	ChangeLog files for you.

WebCore:

	* src/kdelibs/khtml/xml/dom_docimpl.cpp: (DocumentImpl::setTitle):
	Call through to a new KHTMLPart::setTitle instead of the old
	setWindowCaption. We want to skip the special logic for using
	the URL if the title is blank, and for squeezing the title into
	a smaller string, because those are handled at a higher level.

	* src/kwq/KWQKHTMLPart.h: Add setTitle. Also clean up ifdefs.
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::setTitle): New. Calls
	[IFWebDataSource _setTitle].

	* src/kwq/kparts/part.h: Removed setWindowCaption.
	* src/kwq/KWQPart.mm: Removed setWindowCaption.

	* src/kwq/external.h: Add [IFWebDataSource _setTitle].

WebKit:

	* WebView.subproj/IFBaseWebController.mm:
	(-[IFBaseWebController receivedPageTitle:forDataSource:]):
	Remove the exception from here. This is really a "do nothing,
	subclasses override me" method.

	* WebView.subproj/IFWebDataSource.mm:
	(-[IFWebDataSource pageTitle]): Implement.

	* WebView.subproj/IFWebDataSourcePrivate.h: Add pageTitle
	and [IFWebDataSource _setTitle].
	* WebView.subproj/IFWebDataSourcePrivate.mm:
	(-[IFWebDataSourcePrivate dealloc]): autorelease pageTitle.
	(-[IFWebDataSource _setTitle:]): Update the title, trimming
	whitespace and using nil, rather than empty string, to mean
	no title at all. Call [receivedPageTitle: forDataSource:]
	as necessary too.

	* WebView.subproj/IFMainURLHandleClient.mm: Did a gratuitious
	whitespace edit to force this file to recompile so everyone
	doesn\'t have to "make clean".

WebBrowser:

	* BrowserDocument.m: (-[BrowserDocument currentTitle]): New.
	(-[BrowserDocument displayName]): Pass the title into the
	[AppController menuTitleForURL: withTitle:] method.
	(-[BrowserDocument addHistoryEntryForCurrentPage]): Pass the
	title into [IFURIEntry initWithURL: title:]. This isn\'t quite
	right, because we want to update the title later in case we
	add this history entry before the title is parsed.
	(-[BrowserDocument receivedPageTitle:forDataSource:]): If a
	new title arrives for the main frame\'s dataSource, then tell
	all the window controllser to synchronize their window titles
	with the document name. I stole this code from NSDocument.


git-svn-id: svn://svn.chromium.org/blink/trunk@908 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-31 01:02:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d1a7a9d04b461a1d768785d1fe5dcea1812067e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nn01s2t3j2dib6', 1, e'        Added support for scrolling to anchor points.
        Optimization:  we always load the page, even if the URL that contains
        the anchor is the current page.


git-svn-id: svn://svn.chromium.org/blink/trunk@907 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-31 00:15:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/35894d8ad4835b591cfb38f028c066f4bfc21535');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00no01s2qkmjvqds', 1, e'        Added log to note cases of NSURL (CFURL) being unable to
        correctly initialize from URLs.  This log will likely indicate
        bugs in CFURL.


git-svn-id: svn://svn.chromium.org/blink/trunk@906 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-30 21:40:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/83bcdbf84fddbc6476ff562fb2426b719b2b6ed9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00np01s2msfrzwgg', 1, e'        Twiddling with baselines.  kde 2.2 appears to not line up baselines correctly.
        Need to experiment with kde 3.

        Removed copy of function prototype, instead included the correct header.

	Fixed crasher in setFocusPolicy, I don\'t think we even need to use kde\'s focus policy.
        This was added during the kde 3 beta 2 merge.


git-svn-id: svn://svn.chromium.org/blink/trunk@905 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-03-30 20:57:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4af4d229cdc20d6822236b573db2811c7c5e5fbe');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nq01s2uul7x8q3', 1, e'	* Tests/kde/kurl-test.chk: Add test results for new tests. Fix spelling
        error in results for one existing test.

	* Tests/kde/kurl-test.cpp: Don\'t bother using endl, since it just makes
        things more verbose and doesn\'t help.
        (testURL): Add a new overload to use for relative URL tests.
        (main): Add two new tests for relative URLs with colons in them.

	* Tools/HotSpotFinder/HotSpotFinder.pbproj/project.pbxproj: Just update to
        newer Project Builder.

        * Tests/libiftest/IFCheckLeaks.c: Ignore another reported leak,
        IOPSAllocateBlitEngine, although I haven\'t tracked down whether this is a
        real leak or not.

	* WebCore/src/kwq/KWQKURL.mm: (copyAndReplaceAll), (needToHideColons): New
        functions used in workaround for CFURL bug.
	(KURL::normalizeRelativeURLString): Add workaround for CFURL bug; hide colons
        that would confuse CFURL from the CFURL code.

	* WebCore/src/kwq/KWQFont.mm: (QFont::getFont): Use lossyCString instead of cString for
        debugging messages.


git-svn-id: svn://svn.chromium.org/blink/trunk@904 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-30 19:43:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/94c0c2308ea6c2c5f2b127815c60238f50f5c371');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nr01s2lbrwnv9i', 1, e'	* kjs/grammar.y: Took out Id tag so we won\'t constantly need to
        update grammar.cpp.
	* kjs/grammar.cpp: Regenerated without Id tag.

	* .cvsignore: Ignore some additional autogenerated files.
	* kjs/.cvsignore: Ignore some additional autogenerated files.


git-svn-id: svn://svn.chromium.org/blink/trunk@903 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-30 19:17:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/555482202d2ec371f70b28fb91d593dd72d26670');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00ns01s22cehl6y3', 1, e'	* JavaScriptCore.pbproj/project.pbxproj: Install some of the
	headers.


git-svn-id: svn://svn.chromium.org/blink/trunk@902 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-30 11:19:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d03aea125fb7a31486b6ad138cee873c97e3379');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nt01s28ds5thf9', 1, e'Turned JavaScriptCore into a framework, and made it build with Project
Builder in preparation for submission:

Top level:
	* Tests/kde/Makefile.am: Link against JavaScriptCore.framework
	instead of the defunct libJavaScriptCore.dylib.
	* Tests/khtmlview/WebViewTest/WebViewTest.pbproj/project.pbxproj: Likewise.
	* Tests/qt/Makefile.am: Likewise.

JavaScriptCore:
	Converted JavaScriptCore to build with Project Builder, in
	preparation for B&I submission.

	* English.lproj/InfoPlist.strings: Added.
	* JavaScriptCore.pbproj/.cvsignore: Added.
	* JavaScriptCore.pbproj/project.pbxproj: Added.

	* .cvsignore: Update the set of ignored things.

	* Makefile.am: Hand off to PB for the main build, but still handle
	the generated files and the test program.

	* kjs/Makefile.am: Don\'t build anything except the generated
	source files.

	* kjs/KWQDef.h, kjs/config.h: Added minimal versions of these
	files to get kjs to build.

	Check in all the genrated files, since Project Builder isn\'t up to
	the task of handling built sources:

	* kjs/array_object.lut.h: Added.
	* kjs/date_object.lut.h: Added.
	* kjs/grammar.cpp: Added.
	* kjs/grammar.cpp.h: Added.
	* kjs/grammar.h: Added.
	* kjs/lexer.lut.h: Added.
	* kjs/math_object.lut.h: Added.
	* kjs/number_object.lut.h: Added.
	* kjs/string_object.lut.h: Added.

	* kjs/.cvsignore: Update set of ignored things.

WebCore:
	* src/Makefile.am: Link against JavaScriptCore.framework instead
	of the defunct libJavaScriptCore.dylib.

WebKit:
	* WebKit.pbproj/project.pbxproj: Link against
	JavaScriptCore.framework instead of the defunct
	libJavaScriptCore.dylib.

WebBrowser:
	* WebBrowser.pbproj/project.pbxproj: Link against
	JavaScriptCore.framework instead of the defunct
	libJavaScriptCore.dylib.


git-svn-id: svn://svn.chromium.org/blink/trunk@901 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-03-30 11:01:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c6389e2e3d290f36ddb6199cfcf0a772be763be1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvxmj00nu01s2bzr8rfc4', 1, e'        * src/kdelibs/khtml/rendering/render_image.cpp: (RenderImage::updateFromElement):
        Make images with no src, or src="" be empty rather than being the page itself
        loaded as an image.


git-svn-id: svn://svn.chromium.org/blink/trunk@900 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-03-30 00:04:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ad732e17946acd575dddef0477a86129fa58b619');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00ny01s2xtf49kw5', 1, e'	* configure.in: Replace the --disable/enable-debug with the new
	--with-build-style option that Maciej added.

	Use --with-build-style=Development for development. You can also
	use --with-build-style=Deployment for timings and official builds
	and --with-build-style=Unoptimized for debugging.

Main Project Builder projects:

	Add an Unoptimized build style: exactly like Development except without the -O.


git-svn-id: svn://svn.chromium.org/blink/trunk@962 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-04 16:09:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1275d1002a15c3ff6857b41f15eb9e5ae132880b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00nz01s29zhuwhka', 1, e'Somehow this log entry didn\'t get in.


git-svn-id: svn://svn.chromium.org/blink/trunk@961 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-04 15:52:46.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/efbbd5cc6bfc97950259b7b9a02f4e105b3b1089');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o001s23uoqwwga', 1, e'        Changed name of finalURL to redirectedURL.
        Disabled layout after resource load.  It appears to really slow us down.


git-svn-id: svn://svn.chromium.org/blink/trunk@960 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-04 02:05:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/305922b4438b4a6904bd291267664c77468eaa75');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o101s2cbsdiwc3', 1, e'        Added support for finalURL in data source.
        Added support for finalURL and wasRedirected to datasource.
        Added additional layouts on resource loads.
        Added more implementations of frame related methods in data source.


git-svn-id: svn://svn.chromium.org/blink/trunk@959 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-04 00:54:44.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/09e3716a9e4ad796a7af8ebd3ebe38f572172a3b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o201s2x2kofym6', 1, e'	* src/Makefile.am: Concatenate libwebcore.exp and libwebcoretests.exp.
	* src/libwebcore.exp: Update with exports that are needed when inlining is
        turned off.
	* src/libwebcoretests.exp: Added. Exports that we need to run the test in the
        Tests directory.
        * .cvsignore: Ignore the concatenated file.


git-svn-id: svn://svn.chromium.org/blink/trunk@958 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 23:57:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/41f18189b28388d9a3f33275a0bf2803e82f7b84');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o301s2pzaodwry', 1, e'	* acconfig.h: Remove a bunch of unused stuff.
	* configure.in: Remove a bunch of unused stuff. Pass "" for the
	strip flags rather than "-x" for debug case so we don\'t do
	any stripping at all and have symbols.

WebCore:

	* src/Makefile.am: Don\'t strip at all if STRIP_FLAGS are empty.
	* src/kwq/qt/qtextcodec.h: Remove stray undef.


git-svn-id: svn://svn.chromium.org/blink/trunk@957 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 22:17:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/33b880cdc729262abecc4812fc9ec736b07d9249');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o401s231t6n8dp', 1, e'2002-04-03  Kenneth Kocienda  <kocienda@apple.com>

	WebBrowser:

        Updated debugging log messages to use new varargs macros.

        * ActivityViewer.m: (-[ActivityViewer showActivity:]):
        * AppController.m: (-[AppController _computeHistoryFilePath]), (-[AppController
        updateHistoryInMenu]):
        * BrowserDocument.m: (-[BrowserDocument _saveScrollPosition]), (-[BrowserDocument
        _restoreScrollPosition]), (-[BrowserDocument locationChangeStartedForFrame:]),
        (-[BrowserDocument locationChangeCommittedForFrame:]), (-[BrowserDocument
        locationChangeDone:forFrame:]):
        * Debug/DebugUtilities.m: (+[DebugUtilities loadDebugBookmarks:]):
        * LoadProgressEntry.m: (-[LoadProgressEntry status]):
        * WebBrowser.pbproj/project.pbxproj:


	WebCore:

        Updated debugging log messages to use new varargs macros.

        * src/kwq/KWQApplication.mm: (QApplication::sendEvent),
        (QApplication::_initialize):
        * src/kwq/KWQColor.mm: (QColor::setNamedColor):
        * src/kwq/KWQComboBox.mm: (QComboBox::setCurrentItem):
        * src/kwq/KWQFont.mm: (QFont::getFont):
        * src/kwq/KWQFontMetrics.mm: (-[KWQLayoutInfo _initializeCaches]),
        (_rectForString):
        * src/kwq/KWQKHTMLPart.mm: (recursive), (KHTMLPart::write), (KHTMLPart::end),
        (KHTMLPart::nodeActivated):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]),
        (-[URLLoadClient IFURLHandleResourceDidCancelLoading:]), (-[URLLoadClient
        IFURLHandleResourceDidFinishLoading:data:]), (-[URLLoadClient
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[URLLoadClient
        IFURLHandle:resourceDidFailLoadingWithResult:]), (-[URLLoadClient
        IFURLHandle:didRedirectToURL:]), (Loader::servePendingRequests):
        * src/kwq/KWQObject.mm: (QObject::connect), (QObject::performAction):
        * src/kwq/KWQScrollView.mm: (QScrollView::addChild),
        (QScrollView::resizeContents), (QScrollView::updateContents),
        (QScrollView::repaintContents):
        * src/kwq/KWQString.mm: (QString::unicode), (QString::latin1):
        * src/kwq/KWQView.mm: (-[KWQHTMLView notificationReceived:]), (-[KWQHTMLView
        layout]), (-[KWQHTMLView drawRect:]), (-[KWQHTMLView resetView]), (-[KWQHTMLView
        mouseDragged:]):
        * src/kwq/KWQWidget.mm: (QWidget::resize), (QWidget::move):
        * src/kwq/WCPlugin.mm: (-[WCPlugin initializeWithPath:]), (-[WCPlugin load]):
        * src/kwq/WCPluginDatabase.mm: (findPlugins):
        * src/kwq/kwqdebug.h:
        * src/kwq/kwqdebug.mm: (timestamp), (KWQLog):


	WebFoundation:

        Updated debugging log messages to use new varargs macros.

        * WebFoundation.pbproj/project.pbxproj:


	WebKit:

        Updated debugging log messages to use new varargs macros.

        * History.subproj/IFWebHistoryPrivate.m: (-[IFWebHistoryPrivate
        removeEntryForURLString:]), (-[IFWebHistoryPrivate _loadHistoryGuts:]),
        (-[IFWebHistoryPrivate loadHistory]), (-[IFWebHistoryPrivate _saveHistoryGuts:]),
        (-[IFWebHistoryPrivate saveHistory]):
        * Misc.subproj/WebKitDebug.h:
        * Misc.subproj/WebKitDebug.m: (timestamp), (WebKitLog):
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView setWindow]),
        (-[IFPluginView newStream:mimeType:notifyData:]), (-[IFPluginView
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFPluginView
        IFURLHandleResourceDidFinishLoading:data:]), (-[IFPluginView
        becomeFirstResponder]), (-[IFPluginView resignFirstResponder]), (-[IFPluginView
        sendUpdateEvent]), (-[IFPluginView mouseDown:]), (-[IFPluginView mouseUp:]),
        (-[IFPluginView mouseEntered:]), (-[IFPluginView mouseExited:]), (-[IFPluginView
        keyUp:]), (-[IFPluginView keyDown:]), (-[IFPluginView
        getURLNotify:target:notifyData:]), (-[IFPluginView getURL:target:]),
        (-[IFPluginView status:]), (-[IFPluginView stop]):
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFBaseWebControllerPrivate.mm: (-[IFBaseWebController
        _receivedProgress:forResource:fromDataSource:]), (-[IFBaseWebController
        _mainReceivedProgress:forResource:fromDataSource:]):
        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        IFURLHandleResourceDidBeginLoading:]), (-[IFMainURLHandleClient
        IFURLHandleResourceDidCancelLoading:]), (-[IFMainURLHandleClient
        IFURLHandleResourceDidFinishLoading:data:]), (-[IFMainURLHandleClient
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFMainURLHandleClient
        IFURLHandle:resourceDidFailLoadingWithResult:]), (-[IFMainURLHandleClient
        IFURLHandle:didRedirectToURL:]):
        * WebView.subproj/IFWebDataSource.mm: (-[IFWebDataSource isLoading]):
        * WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _stopLoading]):
        * WebView.subproj/IFWebFramePrivate.mm: (-[IFWebFrame
        _transitionProvisionalToLayoutAcceptable]), (-[IFWebFrame _timedLayout:]),
        (-[IFWebFrame _setState:]), (-[IFWebFrame _isLoadComplete]):
        * WebView.subproj/IFWebView.mm: (-[IFWebView reapplyStyles]), (-[IFWebView
        layout]), (-[IFWebView setNeedsDisplay:]), (-[IFWebView setNeedsLayout:]),
        (-[IFWebView setNeedsToApplyStyles:]), (-[IFWebView drawRect:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@956 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-03 21:05:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fde6e2b53e95ccb5ef5914f94c2077256b519c4e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o501s23sjc30jk', 1, e'	Fix problems that show up only when xNDEBUG is set.

	* src/kwq/KWQApplication.mm: (QApplication::sendEvent):
	* src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]):
	* src/kwq/KWQView.mm: (-[KWQHTMLView layout]), (-[KWQHTMLView drawRect:]):
	Remove or ifdef otherwise-unused variables.

	* src/kwq/KWQFontMetrics.mm: (_rectForString):
	* src/kwq/KWQPainter.mm: (QPainter::setRasterOp), (QPainter::translate),
	(QPainter::scale):
	Add missing semicolons.

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::begin):
	Fix an ifdef.


git-svn-id: svn://svn.chromium.org/blink/trunk@955 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 19:41:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fa26c9db512990fcbd46122d47ab10718806f178');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o601s2ro4k7ybv', 1, e'	* configure.in: Set up STRIP_FLAGS for use when building
	libwebcore.dylib. For debug mode, we\'ll use "-x", and for
	deployment mode we\'ll use "-x -S".

	* Tests/kde/Makefile.am:
	* Tests/qt/Makefile.am:
	Link with the unstripped libwebcore, since we need to call
	unexported functions to do our testing.

WebCore:

	* src/Makefile.am: Use nmedit and strip to remove the symbols
	we don\'t want to export.

	* src/libwebcore.exp: Added. List of symbols exported.


git-svn-id: svn://svn.chromium.org/blink/trunk@954 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 18:43:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b707a796a49af3e68828fb83d7bf25656bcbc821');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o701s2bpjr4n5d', 1, e'	* kjs/Makefile.am: Gratuitous cleanup.


git-svn-id: svn://svn.chromium.org/blink/trunk@953 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 18:40:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f9e17f53181a212beb96246a23f0f41724bd5cde');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o801s2bidfwlgx', 1, e'	* src/Makefile.am: Pave the way for cutting down the exports
	list. Also, make the embed target when installing libwebcore.


git-svn-id: svn://svn.chromium.org/blink/trunk@952 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-03 17:58:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/32a3d3f5fff2d2e2343bb8ecc3a2ce2337622ab0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00o901s2y1wdmxjw', 1, e'2002-04-03  Ken Kocienda  <kocienda@apple.com>

        Labyrinth:

        Updated tests to handle new WebFoundation logging output.

        * Tests/WebFoundation-CacheLoader/never-expires-test:
        * Tests/WebFoundation-CacheLoader/never-expires-test.chk:


        WebFoundation:

        Many logging changes.

        - Removed all DEBUG1, DEBUG2, ... variants, and replaced with a single
          macro that relies on cpp varargs (a new cpp feature that landed recently)

        - Updated log messages to be more consistent. Messages now log a time, and
          the string [WEBFOUNDATION] by default.

        - Touched all debugging calls to clean them up and bring them into line
          with the new conventions.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (+[IFHTTPURLProtocolHandler
        parseHTTPDateString:]), (-[IFHTTPURLProtocolHandler createHTTPRequest]),
        (-[IFHTTPURLProtocolHandler performHTTPHeaderRead:]), (-[IFHTTPURLProtocolHandler
        setResponseHeaders:]), (-[IFHTTPURLProtocolHandler determineError]),
        (-[IFHTTPURLProtocolHandler willReturnCacheObject:]), (-[IFHTTPURLProtocolHandler
        cacheObjectIsValid:]), (-[IFHTTPURLProtocolHandler
        cacheObjectRequiresRevalidation:]), (-[IFHTTPURLProtocolHandler
        shouldCacheResourceData]):
        * CacheLoader.subproj/IFURLCacheLoaderConstantsPrivate.h:
        * CacheLoader.subproj/IFURLDiskCache.m: (-[IFURLDiskCache objectForURL:]),
        (-[IFURLDiskCache invalidateURL:]), (-[IFURLDiskCache clearCache]),
        (-[IFURLDiskCache syncCache]):
        * CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandle
        notifyClientsBackgroundLoadCancelled]), (-[IFURLHandle
        notifyClientsBackgroundLoadDidBegin]), (-[IFURLHandle notifyClientsDidLoadData]),
        (-[IFURLHandle notifyClientsBackgroundLoadComplete]), (-[IFURLHandle
        notifyClientsBackgroundLoadFailed]), (-[IFURLHandle notifyClientsURLRedirected]):
        * CacheLoader.subproj/IFURLLoad.m: (-[IFURLLoad succeeded]), (-[IFURLLoad
        didBeginLoading:]), (+[IFURLLoad IFURLLoadCacheCheckerRun:]), (_loadSweeper):
        * CacheLoader.subproj/IFURLMemoryCache.m: (-[IFURLMemoryCache
        truncateToSizeLimit]), (-[IFURLMemoryCache objectForURL:]):
        * Database.subproj/IFNDBMDatabase.m: (-[IFNDBMDatabase objectForKey:]):
        * Database.subproj/IFURLFileDatabase.m: (-[IFURLFileReader initWithPath:]),
        (-[IFURLFileDatabase removeAllObjects]), (-[IFURLFileDatabase objectForKey:]),
        (-[IFURLFileDatabase performSetObject:forKey:]), (-[IFURLFileDatabase
        performRemoveObjectForKey:]):
        * Misc.subproj/WebFoundationDebug.h:
        * Misc.subproj/WebFoundationDebug.m: (WebFoundationDebugAtLevel):


git-svn-id: svn://svn.chromium.org/blink/trunk@950 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-03 15:17:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4a4d50b32089dc784c7acf41613333c8918bbc71');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oa01s2gbo0yz2v', 1, e'	Fixed Radar 2893361 (Two frames with same name cause memory
	trasher (likely double-free)) by implementing the mechanism KDE
	uses to guarantee unique frame names.

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::frameExists): Actually
	implement this, so that the khtml code can guarantee unique frame
	names on each page.

	* src/kwq/external.h: Prototype IFWebDataSource\'s frameExists:
	method here.


git-svn-id: svn://svn.chromium.org/blink/trunk@949 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-03 14:33:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/34dc1bbac6b617073b645272bec4d3b7945f4297');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00ob01s26zygr8ac', 1, e'Top level:

	* Tests/kde/kurl-test.chk, Tests/kde/kurl-test.cpp: Added test
	cases to check that Radar 2893298 (KURL rejects spaces and other
	illegal but unambiguous characters, leading to load failures) is
	fixed.

WebCore:

	Fixed Radar 2893298 (KURL rejects spaces and other illegal but
	unambiguous characters, leading to load failures).

	* src/kwq/KWQKURL.mm: (KURL::KWQKURLPrivate::makeRef,
	KURL::normalizeRelativeURLString): Escape forbidden characters
	(ones that are never legal in a URL), except \'#\' (since that can
	start a fragment identifier) and \'%\'
	(since that can be the start of a valid escape sequence).

	(KURL::KWQKURLPrivate::KWQKURLPrivate,
	KURL::KWQKURLPrivate::compose): out of paranoia, make sure urlRef
	is set to NULL if not a valid value.


git-svn-id: svn://svn.chromium.org/blink/trunk@948 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-03 13:35:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/55ae1aaefceb843b0f377312bc0c06d2236742fd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oc01s2g9qbwsmd', 1, e'	* src/kwq/kwqdebug.mm: (KWQGetLogLevel): Allocate and release
	NSScanner instead of using an autoreleased one, to fix Jersey
	redness whereby the regression tests leak.


git-svn-id: svn://svn.chromium.org/blink/trunk@947 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-03 13:27:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f7de5b71897fa2090b4746b5ae8c15e46a07cbcc');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00od01s2wer4zprm', 1, e'	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/IFMutableData.m:
	* CacheLoader.subproj/IFMutableDataPrivate.m:
	* CacheLoader.subproj/IFURLDiskCache.m:
	* CacheLoader.subproj/IFURLHandle.m:
	* CacheLoader.subproj/IFURLHandleCGlue.m:
	* CacheLoader.subproj/IFURLLoad.m:
	* CacheLoader.subproj/IFURLMemoryCache.m:
	* Database.subproj/IFURLFileDatabase.m:
	* Database.subproj/IFNDBMDatabase.m:
	* Misc.subproj/IFLockFile.m:
        Add the newlines I omitted in my previous commits.


git-svn-id: svn://svn.chromium.org/blink/trunk@946 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 06:08:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/72a9aeaf800ee38fc9da872b33ce1756866faaa0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oe01s25zoz9mnc', 1, e'	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _setTitle:]):
        Update title if the page is already in the committed state.


git-svn-id: svn://svn.chromium.org/blink/trunk@945 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 05:17:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ebafa1839ccea79ffcf97f8ad426f02c6fd69013');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00of01s2fnygw7ou', 1, e'WebFoundation:

	* WebFoundation.pbproj/project.pbxproj: Update warning flags, add -DAPPLE_CHANGES,
	make sure we don\'t get debugging symbols in non-debug builds.

	* Misc.subproj/WebFoundationDebug.h: Get rid of the log variants.
	* Misc.subproj/WebFoundationDebug.m: Get rid of the log variants.

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/IFURLDiskCache.m:
	* CacheLoader.subproj/IFURLHandle.m:
	* CacheLoader.subproj/IFURLLoad.m::
	* CacheLoader.subproj/IFURLMemoryCache.m:
	Wean from the NSLog variants so they get printf type checking.

JavaScriptCore:

	* JavaScriptCore.pbproj/project.pbxproj: Update flags as I did for
	WebFoundation.

WebCore:

	* src/kwq/kwqdebug.h: Turn off logging when xNDEBUG is defined.
	Remove unused stuff. Add checking for printf parameters.
	* src/kwq/kwqdebug.mm: Remove unused variants.

	* src/kwq/KWQApplication.mm:
	* src/kwq/KWQKGlobal.mm:
	* src/kwq/KWQKloader.mm:
	* src/kwq/KWQObject.mm:
	* src/kwq/KWQString.mm:
	* src/kwq/KWQToolTip.mm:
	* src/kwq/KWQWidget.mm:
	* src/kwq/WCPlugin.mm:
	* src/kwq/WCPluginDatabase.mm:
	* src/kwq/npapi.mm:
	Fix types in log statements caught by the compiler.

WebKit:

	* WebKit.pbproj/project.pbxproj: Fix flags as I did in WebFoundation.

	* Misc.subproj/WebKitDebug.h: Turn off logging when xNDEBUG is defined.
	Remove unused stuff. Add checking for printf parameters.
	* Misc.subproj/WebKitDebug.m: Remove unused variants.

	* Plugins.subproj/IFPluginView.mm: Change to use WebKit logging, not
	WebCore logging.

	* WebView.subproj/IFMainURLHandleClient.mm:
	* WebView.subproj/IFWebView.mm:
	Fix types in log statements caught by the compiler.

WebBrowser:

	* WebBrowser.pbproj/project.pbxproj: Update flags as I did for
	WebFoundation.


git-svn-id: svn://svn.chromium.org/blink/trunk@944 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-03 02:50:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/21d679aa7776b3fc366b139b2025df683b75cbb1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00og01s27p93g2aj', 1, e'        Changes to get rid of logging from our non-development builds. We now define
        xNDEBUG (will be NDEBUG some day if we can resolve the precompiled header issue)
        for any non-development builds, and compile out logging code for those.

        * CacheLoader.subproj/IFURLCacheLoaderConstantsPrivate.h: Update comment.

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	* CacheLoader.subproj/IFURLDiskCache.m:
	* CacheLoader.subproj/IFURLHandle.m:
	* CacheLoader.subproj/IFURLLoad.m:
        * CacheLoader.subproj/IFURLMemoryCache.m:
        Change callers to use macros instead of doing their own ifdefs in most cases.
        In the other cases, use an ifdef on xNDEBUG.

	* Misc.subproj/WebFoundationDebug.h: Put in empty definitions for the xNDEBUG
        case. Also make macros for logging, not just debugging.

	* Misc.subproj/WebFoundationDebug.m: Don\'t compile any of this when xNDEBUG is
        set.

	* WebFoundation.pbproj/project.pbxproj: Remove the unused build style. Make
        the default build style set xNDEBUG using DEBUG_CFLAGS. Move our warning flags
        into WARNING_CFLAGS. Make the Development style override DEBUG_CFLAGS. Some
        other minor build setting cleanups.


git-svn-id: svn://svn.chromium.org/blink/trunk@943 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-02 23:34:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/325429d80071eeb03abd712b6ebe7161fe7e8342');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oh01s2r0y3m7r9', 1, e'	* JavaScriptCore.pbproj/project.pbxproj: Pass -Wno-format-y2k so
	the project builds with gcc3.

	* kjs/nodes.cpp: Avoid including an obsolete header to avoid
	warning with gcc3.


git-svn-id: svn://svn.chromium.org/blink/trunk@941 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-02 23:01:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a640e5b9b33c0b31e50c38e124270e4e6c731dd8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oi01s2meptd8r0', 1, e'2002-04-02  Chris Blumenberg  <cblu@apple.com>

        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        IFURLHandleResourceDidCancelLoading:]), (-[IFPluginView
        IFURLHandle:resourceDidFailLoadingWithResult:]), (-[IFPluginView
        IFURLHandle:didRedirectToURL:]):

        Added support for the above callbacks.

        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        IFURLHandle:resourceDataDidBecomeAvailable:]):

        Return an error if non-html is requested.


git-svn-id: svn://svn.chromium.org/blink/trunk@940 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-02 22:39:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/912a6cf8e687675566075cb5b8a35a105bd5f9ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oj01s2ngziatgt', 1, e'        Fixed a fix, shoulda\' been a #ifndef to exclude unnecessary code.


git-svn-id: svn://svn.chromium.org/blink/trunk@939 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 22:08:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/215d503475407904f994f46ed7272902b5d4c076');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00ok01s2pvcspyc6', 1, e'        More noisy bulletproofing.  Still need to find source of problem.

        More relaxed about invalid states.


git-svn-id: svn://svn.chromium.org/blink/trunk@937 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 20:47:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fada13ca12e33b182636d1f52d763846f78717f8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00ol01s2h5izmjjt', 1, e'	* kjs/property_map.cpp: (PropertyMap::~PropertyMap): Deallocate the
        map by calling clear so we don\'t leak the entire map.


git-svn-id: svn://svn.chromium.org/blink/trunk@936 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-02 19:36:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e52351ebc856cb9f185b8972b31a0ce8cafb56f6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00om01s21dv4se0k', 1, e'	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _setTitle:]):
        Fix a leak I introduced here by copying the string in a better way.


git-svn-id: svn://svn.chromium.org/blink/trunk@935 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-02 19:35:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ffa7b5441ddee087e250bf44763a1c578a340f48');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00on01s25abjnuzh', 1, e'        Fix some small storage leaks.

	* src/kwq/KWQWidget.mm: (QWidget::QWidget): Use a single shared default style
        instead of creating a new one for each widget.
        (QWidget::setFont): Since we store a QFont here, we don\'t have to delete the
        old font and we don\'t leak.
        (QWidget::setCursor): Since now store a QCursor here, we don\'t have to delete
        the old cursor.
        Also removed a lot of unused code in here.

	* src/kwq/KWQKURL.mm: Minor code cleanup.


git-svn-id: svn://svn.chromium.org/blink/trunk@934 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-02 19:34:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f902bb0aaddd5fdb94dc47491e9d7a967a58d612');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oo01s2jyz636ot', 1, e'        Added ref() of part from KHTMView.
        Added log to catch m_doc == 0 case.  Should never happen.


git-svn-id: svn://svn.chromium.org/blink/trunk@933 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 19:01:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4c8f0926cc674692bdc6c6fb68b42f89279b92fa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00op01s2a6wif58e', 1, e'        Removed unnecessary and erroneous call to CGContextSetCharacterSpacing.


git-svn-id: svn://svn.chromium.org/blink/trunk@932 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-02 17:37:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/30dca2780b5773b800e7b950df71e767589888e7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsvznt00oq01s2d1zesi3h', 1, e'	* kjs/internal.cpp: (InterpreterImp::globalClear): Add code to
        deallocate and null out emptyList, because once the last interpreter
        is destroyed there\'s nothing to keep it from being garbage collected.


git-svn-id: svn://svn.chromium.org/blink/trunk@931 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-02 17:20:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/56fa6bab8a3b5e4d2fa04794fed7d21061928ae6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00or01s2yprhpcbp', 1, e'        Cleaned up stream deallocations.

        * Plugins.subproj/IFPluginStream.h:
        * Plugins.subproj/IFPluginStream.m: (-[IFPluginStream
        initWithURL:mimeType:notifyData:]), (-[IFPluginStream incrementOffset:]),
        (-[IFPluginStream dealloc]):
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        newStream:mimeType:notifyData:]), (-[IFPluginView
        IFURLHandleResourceDidCancelLoading:]), (-[IFPluginView
        IFURLHandle:resourceDidFailLoadingWithResult:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1001 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-11 03:32:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/614ec41c57908ee440d025d11d41182b5df1a8b5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00os01s2cipnug30', 1, e'Jersey Test


git-svn-id: svn://svn.chromium.org/blink/trunk@995 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-10 20:33:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e0d45cd08778d5a5f0b7b42d34a52620757cef4b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ot01s2a43o0z92', 1, e'	Fixed 2891396 -- window fills with garbage if you resize or hide/show toolbar
	before loading first page

	* WebView.subproj/IFWebView.mm: (-[IFWebView drawRect:]):
	Made webview fill rect with white if there\'s no widget.

	Fixed 2883815 -- JavaScript window-opening preference should mention ad suppression
	Fixed 2890818 -- If Alexander window is opened when home page is invalid, sheet appears
	behind window
	Fixed 2896685 -- Crash in CFStringAppendCString putting up alert dialog if nonexistent file
	has spaces in name

	* BrowserDocument.m:
	(-[BrowserDocument goHome:]): Changed comments, added assert
	(-[BrowserDocument displayError:forFrame:withStage:]): Made error message be a parameter to
	format string @"%@" instead of a format string with no parameters, to handle the case where
	error message contains % characters that look like format characters.
	* BrowserWindow.m:
	(-[BrowserWindow _goToInitialURLFromTimer:]): New method, called from timer, just goes to initial URL.
	(-[BrowserWindow windowDidLoad]): Use timer to go to initial URL, to ensure that window is visible
	before sheet-displaying code runs.

	* Preferences.subproj/ActiveContentPreferences.nib: Added another sentence of fine print to JavaScript
	preferences.


git-svn-id: svn://svn.chromium.org/blink/trunk@994 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-10 18:48:36.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/799ad8cfd01b387b4572ceaeff3b283d274705b0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ou01s2ilyjn71g', 1, e'Jersey test


git-svn-id: svn://svn.chromium.org/blink/trunk@993 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-10 18:06:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b9daf23a1fbbb5b31f128e76f23ff357e30be4bd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ov01s2vyea4l9f', 1, e'- Moved plug-in streams to IFPluginStream
- Put IFPluginNullEventSender to it own file.


git-svn-id: svn://svn.chromium.org/blink/trunk@992 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-09 23:45:54.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f4e8295e3e374fc6ae61b706585b5e12e6d56b4e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ow01s2jrn9muul', 1, e'        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView setWindow]),
        (-[IFPluginView newStream:mimeType:notifyData:]), (-[IFPluginView start]),
        (-[IFPluginView stop]), (-[IFPluginView dealloc]), (-[IFPluginView
        findSuperview:]), (-[IFPluginView sendUpdateEvent]), (-[IFPluginView drawRect:]),
        (-[IFPluginView isFlipped]), (-[IFPluginView viewHasMoved:]), (-[IFPluginView
        windowBecameKey:]), (-[IFPluginView windowResignedKey:]), (-[IFPluginView
        windowWillClose:]), (-[IFPluginView IFURLHandleResourceDidBeginLoading:]),
        (-[IFPluginView IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFPluginView
        IFURLHandleResourceDidFinishLoading:data:]), (-[IFPluginView
        IFURLHandleResourceDidCancelLoading:]), (-[IFPluginView
        IFURLHandle:resourceDidFailLoadingWithResult:]), (-[IFPluginView
        IFURLHandle:didRedirectToURL:]), (-[IFPluginView forceRedraw]), (IFPluginMake),
        (+[IFPluginView load]):
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFLoadProgress.h:

        Cleaned up the IFPluginView code. Moved a lot of things around.

        Added support for plug-in file download progress.


git-svn-id: svn://svn.chromium.org/blink/trunk@991 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-09 23:44:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8d514b50cc85055d33391fc29b1f24f9ade21de9');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ox01s2z9meplis', 1, e'Added bug number to the last ChangeLog entry:

	Fix Radar 2896001 (crashes in KURL):


git-svn-id: svn://svn.chromium.org/blink/trunk@990 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-09 00:17:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/982ccde0fe1dc736913e33dc172b7d50cbdfc994');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00oy01s29eagxrp6', 1, e'	* src/kwq/KWQKURL.mm: (KURL::KWQKURLPrivate::KWQKURLPrivate):
	Initialize refCount to 0 in the copy constructor.


git-svn-id: svn://svn.chromium.org/blink/trunk@989 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-09 00:14:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f62f65e20045c08fa3a833b0e53243d1b1878369');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00oz01s2cqsh5t41', 1, e'Retroactively reviewed Darin\'s change.


git-svn-id: svn://svn.chromium.org/blink/trunk@986 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-08 21:14:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e4690287b7103913817cf2d5dc074d993717c643');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p001s2ako6if7t', 1, e'        * src/kwq/KWQKHTMLPart.mm: (KHTMLPart::requestObject):
        * src/kwq/WCPluginWidget.h:
        * src/kwq/WCPluginWidget.mm: (WCPluginWidget::WCPluginWidget):

        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView drawRect:]),
        (-[IFPluginView newStream:mimeType:notifyData:]), (-[IFPluginView
        getURLNotify:target:notifyData:]):

        Support new stream requests from plug-ins that are relative URL\'s.


git-svn-id: svn://svn.chromium.org/blink/trunk@985 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-08 21:08:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d39bff0ab37f5130e9aa74406538a68b124bff34');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p101s20vq721v1', 1, e'Re-added -Wno-format-y2k.


git-svn-id: svn://svn.chromium.org/blink/trunk@984 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-08 20:12:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/195cfde2380eb5c5e21772e9d4b5b1bcde80cb4a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p201s2hexw8qq4', 1, e'        Added logs for Shelley to note start and completion of document load.
        -WebKitLogLevel 0x1000.  Also, as a bonus, note time to load.


git-svn-id: svn://svn.chromium.org/blink/trunk@983 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-08 19:39:39.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/18c027b11dba9fb1afe5940288e3f8cd1a3aa218');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p301s2hm9tzkoh', 1, e'        * Plugins.subproj/IFNullPluginView.h:
        * Plugins.subproj/IFNullPluginView.mm: (-[IFNullPluginView
        initWithFrame:mimeType:arguments:]), (-[IFNullPluginView drawRect:]):
        * WebView.subproj/IFBaseWebController.mm: (-[IFBaseWebController
        pluginNotFoundForMIMEType:pluginPageURL:]):
        * WebView.subproj/IFWebController.h:

        Added pluginNotFoundForMIMEType: pluginPageURL: to WebKit. This gets called
        by IFNullPluginView when a plug-in for a certain mime type is requested but
        not installed.


git-svn-id: svn://svn.chromium.org/blink/trunk@982 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-08 18:51:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/45db4dad2ad01e972da201265a4f3cff95f5c292');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p401s212ohegps', 1, e'i        Added frameForView:
        Cleaned up out-of-date comments.


git-svn-id: svn://svn.chromium.org/blink/trunk@981 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-08 17:58:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/dfe9f04553a00d66b7f6c476bdb581e0f9f12602');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p501s27txuig29', 1, e'        * Plugins.subproj/IFNullPluginView.mm: (+[IFNullPluginView load]):

        Enabled the null plugin code.

        * src/libwebcore.exp:

        Added symbol for IFNullPluginView


git-svn-id: svn://svn.chromium.org/blink/trunk@980 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-06 01:46:29.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d7ea9985bc1ae123e3c163d0da0879a8a7e5ddb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p601s20c5js4lv', 1, e'        Various scrolling, hit detection, and goto anchor fixes to account for frames being
        translated in scroll views.


git-svn-id: svn://svn.chromium.org/blink/trunk@979 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 23:51:48.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7dcf91909031a65579925aad6b13bccb78069205');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p701s2c6iarekc', 1, e'        * Plugins.subproj/IFNullPluginView.h: Added.
        * Plugins.subproj/IFNullPluginView.mm: Added.
         (-[IFNullPluginView initWithFrame:mimeType:arguments:]), (-[IFNullPlug$
        findSuperview:]), (-[IFNullPluginView drawRect:]):
        * Resources/nullplugin.tiff: Added.
        * WebKit.pbproj/project.pbxproj:

        * src/kwq/WCPluginWidget.h:
        * src/kwq/WCPluginWidget.mm: (WCSetIFNullPluginMakeFunc),
        (WCPluginWidget::WCPluginWidget), (WCIFPluginMakeFunction),
        (WCIFNullPluginMakeFunction):

        An IFNullPluginView is now created when no plug-in for a requested
        mime type is found. IFNullPluginView displays a null plug-in icon
        and will eventually report this error to the WebController.


git-svn-id: svn://svn.chromium.org/blink/trunk@978 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-05 23:13:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e8c038f7406838eded46a803a684410be730ddd1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p801s2nyubtp64', 1, e'        Back out some changes to lazily dealloc frame.


git-svn-id: svn://svn.chromium.org/blink/trunk@976 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 21:15:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/831fcbde2cb0bed06aefe580ec94851f9d366fa2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00p901s2wsczh08k', 1, e'        Hacks to support:

        1.  Not loading a document when a link is to an anchor on same page.
        2.  Correctly targeting frames.

        Our documentation is actually useable now.

        New method on controller to find a frame of a particular name
        anywhere in the frame hierarchy.


git-svn-id: svn://svn.chromium.org/blink/trunk@975 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 20:46:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bf9dcf2a7fae4a0e5edf1e16bbd85d81b8a04b03');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pa01s2b0vhfefp', 1, e'WebFoundation:

	* CacheLoader.subproj/IFURLHandle.h: Eliminated [availableResourceData]
	in favor of the new [resourceData], which is nil until load is complete.
	* CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandle loadInForeground:]):
	Wean from availableResourceData; use resourceData instead.
	(-[IFURLHandle resourceData]): New name, now returns nil unless statusCode
	is IFURLHandleStatusLoadComplete.

	* CacheLoader.subproj/IFURLHandleC.h:
	* CacheLoader.subproj/IFURLHandleC.m: (IFURLHandleGetResourceData):
	Replace IFURLHandleGetAvailableResourceData with IFURLHandleGetResourceData.

	* WebFoundation.pbproj/project.pbxproj: The battle of the Project Builder
	versions.

WebCore:

	* src/kwq/KWQKloader.mm:
	(-[URLLoadClient IFURLHandle:resourceDidFailLoadingWithResult:]):
	Use contentLengthReceived rather than getting the length of
	availableResourceData to determine how much data has arrived.

WebKit:

	* WebView.subproj/IFMainURLHandleClient.mm:
	(-[IFMainURLHandleClient IFURLHandle:resourceDidFailLoadingWithResult:]):
	Use contentLengthReceived rather than getting the length of
	availableResourceData to determine how much data has arrived.


git-svn-id: svn://svn.chromium.org/blink/trunk@974 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-05 19:05:41.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/007fe260a69265f0f10d3c565108b475348a374e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pb01s2j0wp4aam', 1, e'i        Implemented the same lazily deallocation scheme on frame as in controller
        and data source.
        More bulletproofing to deal with cleanup during deallocation.


git-svn-id: svn://svn.chromium.org/blink/trunk@973 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 18:56:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/8f7b869fa25a700ae0d33c6968a495d9bb83cef4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pc01s2kf0i0v2d', 1, e'	* src/kwq/qt/qmap.h (QMapNode::~QMapNode): Cast left() and right()
	to the right type to fix a leak detected by the automated leak
	checking on Jersey.


git-svn-id: svn://svn.chromium.org/blink/trunk@972 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-05 08:36:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b94845c96841864be1fc9db0e544e18075549e7e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pd01s25urndpqk', 1, e'        Clear controller references from data source and view, as well as
        frame.


git-svn-id: svn://svn.chromium.org/blink/trunk@971 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 06:56:51.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/23f4f27f1ce485af2d260e49d1cb8083d39cf265');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pe01s2e2dez2kg', 1, e'        Lazily dealloc controller and data source ONLY after all loads
        have completed.

        Extra bulletproofing to prevent script execution when in partially
        dealloced state.

        Guarantee that browser document isn\'t dangling after
        deallocing the WebController.


git-svn-id: svn://svn.chromium.org/blink/trunk@970 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-05 03:07:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/96dd1e7856585be65001018626f921d7678061fb');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pf01s2mbs9go9o', 1, e'2002-04-04  Chris Blumenberg  <cblu@apple.com>

        * src/kwq/WCPlugin.mm: (-[WCPlugin load]):
        * src/kwq/npapi.h:
        * src/kwq/npapi.mm: (NPN_GetJavaEnv), (NPN_GetJavaPeer):

        Added stubs for NPN_GetJavaEnv and NPN_GetJavaPeer. This fixes a flash crasher.


git-svn-id: svn://svn.chromium.org/blink/trunk@969 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-05 01:15:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7e8911aa245c57cbf212d16291d107ccc14c9e24');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pg01s2oxzfddk9', 1, e'2002-04-04  Chris Blumenberg  <cblu@apple.com>

        * src/kdelibs/khtml/rendering/render_frames.cpp:
        (RenderPartObject::updateWidget):
        * src/kwq/WCPluginWidget.mm: (WCPluginWidget::WCPluginWidget):

        Moved the removal of __KHTML__ EMBED attributes to WCPluginWidget. One less APPLE_CHANGES.


git-svn-id: svn://svn.chromium.org/blink/trunk@968 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-05 00:27:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2e74f27e03bd88fec7cc74066989362f07338a4d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00ph01s2dllr437q', 1, e'2002-04-04  Kenneth Kocienda  <kocienda@apple.com>

        Hack to handle displaying image URLs. The trick is to sense when
        the main URL is an image type and wrap the URL in a small generated
        HTML document and hand that off to the engine to display.

        Works like a charm! :)

        There may be some longer-term issues, but for now, this lets us
        do something we could not before. It also lets us handle some iframes
        that contain only image URLs.

        * Resources/image_document_template.html: Added.
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFMainURLHandleClient.h:
        * WebView.subproj/IFMainURLHandleClient.mm: (loadImageDocumentTemplate),
        (-[IFMainURLHandleClient initWithDataSource:part:]), (-[IFMainURLHandleClient
        IFURLHandle:resourceDataDidBecomeAvailable:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@967 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-04 23:31:26.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/68827c50a9a957e71ce0328e92b3f56f22a49a78');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pi01s2020bczzf', 1, e'2002-04-04  Chris Blumenberg  <cblu@apple.com>

        * English.lproj/IFError.strings:
        * Misc.subproj/IFError.h:
        * Misc.subproj/IFError.m: (+[IFError initialize]):
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        IFURLHandle:resourceDataDidBecomeAvailable:]):

        Added the IFNonHTMLContentNotSupportedError to IFError.


git-svn-id: svn://svn.chromium.org/blink/trunk@966 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-04 22:50:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a972d46465250425e2db623a0b4ad65359669056');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pj01s2exwjj56l', 1, e'	Redo clobbered fixes for problems that show up only when xNDEBUG is set

	* src/kwq/KWQApplication.mm: (QApplication::sendEvent):
	* src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidBeginLoading:]):
	Remove or ifdef otherwise-unused variables.

	* src/kwq/KWQFontMetrics.mm: (_rectForString):
	Add missing semicolons.


git-svn-id: svn://svn.chromium.org/blink/trunk@965 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-04 19:41:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4ca8d6937f71c7342fd46417af42531525f6aa7b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw2sf00pk01s22fuo3v5c', 1, e'	* src/kwq/KWQString.mm: (QString::unicode), (QString::latin1),
	(QString::convertToQCString): Remove some excessive logging that
	was getting in the way of important log messages.


git-svn-id: svn://svn.chromium.org/blink/trunk@964 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-04 19:10:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c367744cbc9eb2ab13538a2fd33df50ea518e0ce');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5lz00pl01s2qbpxg6rp', 1, e'	Take out -Wmissing-prototypes
	because system headers are triggering it when we don\'t have
	precompiled headers on.


git-svn-id: svn://svn.chromium.org/blink/trunk@1046 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-18 22:54:16.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d10f603fa75fcd7da750160cb735be4de5203f8c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pm01s2ag1gr2tr', 1, e'	* Makefile.am: Pass the -f flag to ln so it doesn\'t fail when
	there\'s already a link there.

	* configure.in: Use gcc3 and g++3 so we always get gcc 3.0, no
	matter how the system is configured. Besides the fact that gcc
	3.0 includes more in -Wall, turned on the following additional
	warnings that were not on before:
	    -W
	    -Wbad-function-cast
	    -Wformat-security
	    -Wmissing-format-attribute
	    -Wstrict-prototypes
	    -Wwrite-strings
	Also removed the -fno-coalesce-static-vtables flag for C++
	and removed explicit mention of C++ warnings that are part of
	-Wall in gcc 3.0 at least.

	* Tests/harness.c: (main): Const string fix.
	* Tests/kde/kurl-test.cpp: (testURL): Std namespace and const string fix.
	* Tests/libiftest/IFTestDirectory.c: (IFSetUpTestDirectory): Const string fix.
	* Tests/libiftest/IFTestDirectory.h: Const string fix.

	* Tests/qt/qarray-test.cpp:
	* Tests/qt/qbuffer-test.cpp:
	* Tests/qt/qchar-test.cpp:
	* Tests/qt/qcstring-test.cpp:
	* Tests/qt/qdate-test.cpp:
	* Tests/qt/qdatetime-test.cpp:
	* Tests/qt/qdict-test.cpp:
	* Tests/qt/qdir-test.cpp:
	* Tests/qt/qfile-test.cpp:
	* Tests/qt/qlist-test.cpp:
	* Tests/qt/qmap-test.cpp:
	* Tests/qt/qpoint-test.cpp:
	* Tests/qt/qptrdict-test.cpp:
	* Tests/qt/qrect-test.cpp:
	* Tests/qt/qregexp-test.cpp:
	* Tests/qt/qsize-test.cpp:
	* Tests/qt/qsortedlist-test.cpp:
	* Tests/qt/qstack-test.cpp:
	* Tests/qt/qstring-test.cpp:
	* Tests/qt/qstringlist-test.cpp:
	* Tests/qt/qtime-test.cpp:
	* Tests/qt/qvaluelist-test.cpp:
	* Tests/qt/qvector-test.cpp:
	Add "using namespace std" to each test as a simple std namespace fix.

WebFoundation:

	Reviewed by Maciej

	Fixes for compiling with gcc3 and more warnings.

	* WebFoundation.pbproj/project.pbxproj: Turn on gcc3 and the same set of warnings
	as in the rest of Labyrinth (see top level ChangeLog for details).

	* CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandle percentComplete]):
	Rearrange code to avoid a cast to (float) that gcc3 didn\'t like.

	* Database.subproj/IFNDBMDatabase.m: (-[IFNDBMDatabase objectForKey:]):
	Mark some variables volatile to make gcc3 happy about their values and the
	use of longjmp. Good catch on the compiler\'s part.

	* Database.subproj/IFURLFileDatabase.m: Work around bug 2905545 so we can
	have -W on for all the rest of WebFoundation.
	(URLFileReaderInit): Mark this as (void) so it\'s not a non-prototyped function.
	(-[IFURLFileReader initWithPath:]): Don\'t assign to self so gcc3 is not unhappy
	about the use of it with longjmp.
	(-[IFURLFileDatabase objectForKey:]): Mark some variables volatile to make gcc3
	happy about their values and the use of longjmp.

	* Misc.subproj/IFNSObjectExtensions.m: (-[NSObject performBooleanSelector:]),
	(-[NSObject performBooleanSelector:withObject:]): Do a new implementation that
	does\'t make the compiler unhappy about type casts.

	* Misc.subproj/IFNSThreadExtensions.m: Work around bug 2905545 so we can
	have -W on for all the rest of WebFoundation.
	(InitJoinableThreads): Mark this as (void) so it\'s not a non-prototyped function.

JavaScriptCore:

	Reviewed by Maciej

	* JavaScriptCore.pbproj/project.pbxproj: Turn on gcc3 and the same set of warnings
	as in the rest of Labyrinth (see top level ChangeLog for details).

WebCore:

	Fixes for compiling with gcc3 and more warnings.

	* khtml/html/.cvsignore: Add kentities.c; I could have sworn I did this
	already.
	* khtml/html/Makefile.am: Remove erroneous duplicate definition of
	CLEAN_FILES.

	* libwebcore.exp:
	* libwebcoretests.exp:
	Rebuilt these lists from scratch. Almost everything in here is different
	since the C++ name mangling rules changed.

	* khtml/css/cssparser.cpp:
	* khtml/misc/htmlhashes.cpp:
	Disable inlining in part of this file as a workaround for Radar 2905890.

	* kwq/KWQApplication.mm: (QDesktopWidget::screenGeometry):
	Add casts to int needed to make gcc3 happy.
	* kwq/KWQArrayImpl.mm: Add missing #include of <string.h>.

	* kwq/KWQBitmap.mm:
	* kwq/KWQFrame.mm:
	* kwq/KWQLineEdit.mm:
	Removed some unused copy constructors and assignment operators to avoid
	warnings in them.

	* kwq/KWQButton.mm: (QButton::setText):
	* kwq/KWQListBox.mm: (QListBox::~QListBox), (QListBox::clear),
	(QListBox::setSelectionMode), (QListBox::currentItem), (QListBox::insertItem),
	(QListBox::setSelected), (QListBox::isSelected), (QListBoxItem::width),
	(QListBoxItem::height):
	* kwq/KWQScrollView.mm: (QScrollView::setContentsPos), (QScrollView::addChild),
	(QScrollView::resizeContents), (QScrollView::viewportToContents),
	Use local variables to work around Radar 2905835.

	* kwq/KWQCString.mm: (operator<<):
	* kwq/KWQPoint.mm: (operator<<):
	* kwq/KWQRect.mm: (operator<<):
	* kwq/KWQSize.mm: (operator<<):
	* kwq/qt/qarray.h:
	* kwq/qt/qcstring.h:
	* kwq/qt/qdatetime.h:
	* kwq/qt/qdict.h:
	* kwq/qt/qlist.h:
	* kwq/qt/qmap.h:
	* kwq/qt/qpainter.h:
	* kwq/qt/qpoint.h:
	* kwq/qt/qptrdict.h:
	* kwq/qt/qrect.h:
	* kwq/qt/qsize.h:
	* kwq/qt/qstack.h:
	* kwq/qt/qvaluelist.h:
	* kwq/qt/qvector.h:
	Say std::ostream instead of just ostream.

	* kwq/KWQCharsets.mm: Fix a const problem.

	* kwq/KWQDateTime.mm: (QTime::elapsed), (QTime::restart): Use int instead
	of uint, since these functions try to handle values that are less than 0.
	(operator<<): Say std::ostream instead of just ostream.
	* kwq/KWQTextArea.mm: (RangeOfParagraph): Fix an int/uint issue.

	* kwq/KWQFile.mm: (QFile::KWQFilePrivate::KWQFilePrivate),
	(QFile::KWQFilePrivate::~KWQFilePrivate): Use new/delete instead of
	malloc/free so we don\'t get void * warnings.

	* kwq/KWQFontMetrics.mm: (__IFFillStyleWithAttributes),
	(-[KWQLayoutInfo drawString:atPoint:withFont:color:]),
	(-[KWQLayoutInfo _initializeCaches]),
	(_rectForString):
	* kwq/KWQKURL.mm: (KURL::KWQKURLPrivate::KWQKURLPrivate),
	(RelativeURLKeyRetainCallBack), (RelativeURLKeyReleaseCallBack),
	(RelativeURLKeyEqualCallBack), (RelativeURLKeyHashCallBack),
	(KURL::normalizeURLString), (KURL::normalizeRelativeURLString):
	* kwq/KWQPainter.mm: (QPainter::save):
	* kwq/KWQKloader.mm:
	(-[URLLoadClient IFURLHandle:resourceDidFailLoadingWithResult:]),
	(-[URLLoadClient IFURLHandle:didRedirectToURL:]):
	Add type casts where necessary to make the stricter gcc3 happy.

	* kwq/KWQPixmap.mm: (QPixmap::QPixmap): Explicitly initialize the underlying
	QPaintDevice.
	(QPixmap::size), (QPixmap::rect): Add type casts where necessary to make
	the stricter gcc3 happy.

	* kwq/KWQPtrDictImpl.mm: (KWQPtrDictImpl::KWQPtrDictPrivate::KWQPtrDictPrivate):
	Say std::bad_alloc instead of just bad_alloc.
	(invokeDeleteFuncOnValue), (KWQPtrDictImpl::clear): Pass a pointer to a function
	pointer rather than a function pointer to avoid a warning about turning function
	pointers into void *.

	* kwq/KWQRegion.mm: (QRegion::_initialize), (QRegion::~QRegion): Use new/delete
	rather than calloc/free so we don\'t get void * warnings.
	(QRegion::boundingRect): Add type casts.

	* kwq/KWQString.mm: (QString::fromStringWithEncoding): Add cast.
	(QString::setNum): use %ld and %lu rather than %D and %U.
	(QString::fill), (QString::convertToQCString): Add casts.

	* kwq/KWQTextStorage.mm: (-[KWQTextStorage _buildFragmentForString:]):
	Add a cast to make gcc3 happy.

	* kwq/KWQVariant.mm: Say "friend class" instead of "friend".

	* kwq/KWQVectorImpl.mm: (KWQVectorImpl::KWQVectorPrivate::KWQVectorPrivate):
	Say std::bad_alloc instead of just bad_alloc.
	(KWQVectorImpl::data): Replace the old autorelease trick with a new one that
	doesn\'t require mixing malloc with NSData.

	* kwq/KWQView.mm: (-[KWQHTMLView mouseUp:]), (-[KWQHTMLView mouseDown:]):
	Add casts to make gcc3 happy.

	* kwq/KWQWidget.mm: (QWidget::frameGeometry), (QWidget::mapToGlobal),
	(QWidget::minimumSizeHint): Add casts to make gcc3 happy. Also another
	workaround for Radar 2905835.

	* kwq/WCPlugin.mm: (-[WCPlugin load]): Add tons of type casts so we don\'t have
	to mix void * with function pointer types.

	* kwq/WCPluginWidget.h:
	* kwq/WCPluginWidget.mm: (WCIFPluginMakeFunction), (WCIFNullPluginMakeFunction):
	Change types so we don\'t have to mix void * with function pointer types.
	This caught a mistake where WCIFNullPluginMakeFunction was returning the wrong
	function pointer.

	* kwq/external.h: Add some missing interfaces that the pickier gcc3 needed to see.

	* kwq/kwqdebug.mm: Don\'t compile the file if xNDEBUG is set. Otherwise we get
	a warning in here.

	* kwq/npapi.h: Use function pointer types for function pointers and transition
	vectors so we don\'t have to mix void * with function pointer types.

	* kwq/npapi.mm: (NPN_GetURLNotify), (NPN_GetURL),
	(NPN_PostURLNotify), (NPN_PostURL), (NPN_NewStream), (NPN_Write),
	(NPN_DestroyStream), (NPN_Status), (NPN_GetValue), (NPN_SetValue),
	(NPN_InvalidateRect), (NPN_InvalidateRegion), (NPN_ForceRedraw):
	Use local variables to work around Radar 2905835.
	(functionPointerForTVector), (tVectorForFunctionPointer):
	Change types around so we don\'t have to mix void * with function pointer types.

WebKit:

	Fixes for compiling with gcc3 and more warnings.

	* WebKit.pbproj/project.pbxproj: Turn on gcc3 and the same set of warnings
	as in the rest of Labyrinth (see top level ChangeLog for details).

	* Plugins.subproj/IFPluginView.mm:
	Avoid warnings about malloc by not using it.
	(-[IFPluginView initWithFrame:plugin:url:mime:arguments:mode:]): Keep the arguments
	dictionary around instead of keeping the C format version of it around. Also don\'t
	bother keeping the C string form of the MIME type around, and simplify some other
	stuff in here.
	(-[IFPluginView dealloc]): Corresponding changes since we keep a different set of things.
	(-[IFPluginView newStream:mimeType:notifyData:]): Use [mimeType cString].
	(-[IFPluginView start]): Build the lists of attributes and values in here. Do it using
	[NSString cString] for simplicity and don\'t keep the lists around after we\'re done with
	them.
	(-[IFPluginView IFURLHandleResourceDidFinishLoading:data:]): Use [filenameClassic cString].

	* WebView.subproj/IFMainURLHandleClient.mm:
	(-[IFMainURLHandleClient IFURLHandleResourceDidCancelLoading:]),
	(-[IFMainURLHandleClient IFURLHandleResourceDidFinishLoading:data:]),
	(-[IFMainURLHandleClient IFURLHandle:resourceDataDidBecomeAvailable:]),
	(-[IFMainURLHandleClient IFURLHandle:resourceDidFailLoadingWithResult:]):
	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSourcePrivate dealloc]),
	(-[IFWebDataSource _setLoading:]), (-[IFWebDataSource _setController:]),
	(-[IFWebDataSource _setLocationChangeHandler:]):
	* WebView.subproj/IFWebView.mm: (-[IFWebView provisionalDataSourceChanged:]),
	(-[IFWebView mouseUp:]), (-[IFWebView mouseDown:]):
	Add type casts required by pickier gcc3.

	* WebView.subproj/IFWebViewPrivate.mm: (-[IFWebViewPrivate dealloc]):
	Add type cast required by pickier gcc3.
	(-[IFWebView _stopPlugins]): Use local variable to work around Radar 2905835.

WebBrowser:

	Fixes for compiling with gcc3 and more warnings.

	* WebBrowser.pbproj/project.pbxproj: Turn on gcc3 and the same set of warnings
	as in the rest of Labyrinth (see top level ChangeLog for details).

	* InternetConfigUtilities.m: (stringValueForICKey), (setStringValue):
	Some const string fixes.
	* Preferences.subproj/TextPreferences.m: (-[TextPreferences changeFont:]):
	Remove a cast that makes gcc3 unhappy.
	* ___CFA2UC.c: (NSGiantRaise): Const string fix.
	(gcompg): Old-style function prototype fix.
	(initialguess): Remove a cast that makes gcc3 unhappy.


git-svn-id: svn://svn.chromium.org/blink/trunk@1045 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-18 22:38:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c4cee0dd06ef2c8edbcf855c9a88177d88699de5');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pn01s20yy51ewc', 1, e'        Moved plugin instance creation to the start method in IFPluginView.

        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView dealloc]),
        (-[IFPluginView newStream:mimeType:notifyData:]), (-[IFPluginView start]),
        (-[IFPluginView stop]), (-[IFPluginView drawRect:]), (-[IFPluginView
        windowBecameKey:]), (-[IFPluginView windowResignedKey:]), (-[IFPluginView
        IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFPluginView
        IFURLHandleResourceDidFinishLoading:data:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1044 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-18 18:49:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2d400f9f28a9d25b0690bc2f8eedad2ae9197b3c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000po01s272iq71ha', 1, e'	Reviewed by: Darin Adler  <darin@apple.com>

	* kjs/testkjs.cpp: Don\'t include <iostream.h> to avoid gcc3
	warning.


git-svn-id: svn://svn.chromium.org/blink/trunk@1041 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-18 01:00:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/14e9c4803c504b80c14d0c433f5f8860d81ba181');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pp01s2tvuuu8d5', 1, e'	Fix build problem.

	* Makefile.am: Don\'t build this directory before subdirs, because
	we link at this level. Move the kentities.c build out of here,
	because it needs to be done before khtml/html.
	* khtml/html/Makefile.am: Move kentities.c build rules here.

	* kentities.gperf: Removed.
	* khtml/html/kentities.gperf: Added.

	* .cvsignore: Don\'t ignore kentities.c.
	* khtml/html/.cvsignore: Ignore kentities.c.


git-svn-id: svn://svn.chromium.org/blink/trunk@1040 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-17 23:37:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/41cd63131f53622e0034d807d08c9f23c13eb93e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pq01s24he9xrop', 1, e'top level:

	* configure.in: Update for new organization of WebCore.

	* Tools/HotSpotFinder/HotSpotFinder.pbproj/project.pbxproj: Switch to gcc3 and
	turn on more warnings.
	* Tools/HotSpotFinder/SamplingData.m:
	(-[SamplingDataAccumulator processFunction:depth:]): Fix a signed/unsigned warning.

WebCore:

	* .cvsignore: Ignore new generated files at this level.

	* include/*: Removed. We don\'t need this hack any more.
	* src/*: Removed. Sources are now in their new locations.
	* src/libwebcore.exp: Removed. This is now in its new location.
	* src/libwebcoretests.exp: Removed. This is now in its new location.

	* Makefile.am: Build khtml and kwq subdirs, don\'t build src and include.
	Also add the rules that used to be in src about linking the library and
	the rules that used to be in src/kdelibs/kdecore about building the
	kentitices.c file.

	* dummy.mm: Moved here from src by hand.
	* kentities.gperf: Moved here from src/kdelibs/kdecore by hand.

	* khtml/html/Makefile.am: Add WebCore directory to includes so the
	include of "kentities.c" will work.

	* kwq/KWQKHTMLPart.mm:
	* kwq/KWQKJavaEmbed.mm:
	* kwq/KWQKloader.mm:
	Correct includes so we don\'t need a -I for each of the subdirectories.

	* kwq/khtml/java/javaembed.h: Removed. We use the one in the real
	khtml directory.

	* kwq/kwqdebug.h: Rolled over Chris\'s changes, which were done after
	the cvs surgery was done.

WebKit:

	* WebKit.pbproj/project.pbxproj: Update header search paths to find
	WebCore in the new location and eliminate WebCore/include.

WebBrowser:

	* WebBrowser.pbproj/project.pbxproj: Update header search paths to find
	WebCore in the new location and eliminate WebCore/include.


git-svn-id: svn://svn.chromium.org/blink/trunk@1039 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-17 23:12:49.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/95a6c175a56c4754fe23eb449c66bc677da67ebf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pr01s25lr5axba', 1, e'	Added a debug bit mask for plugins and downloads.

	* MIME.subproj/IFDownloadHandlerPrivate.m: (-[IFDownloadHandlerPrivate
	_openFile]), (-[IFDownloadHandlerPrivate _saveFile]), (-[IFDownloadHandler
	_initWithURLHandle:mimeHandler:]):
	* Misc.subproj/WebKitDebug.h:
	* Plugins.subproj/IFPluginView.mm: (-[IFPluginView
	initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView setWindow]),
	(-[IFPluginView newStream:mimeType:notifyData:]), (-[IFPluginView stop]),
	(-[IFPluginView sendUpdateEvent]), (-[IFPluginView becomeFirstResponder]),
	(-[IFPluginView resignFirstResponder]), (-[IFPluginView mouseDown:]),
	(-[IFPluginView mouseUp:]), (-[IFPluginView mouseEntered:]), (-[IFPluginView
	mouseExited:]), (-[IFPluginView keyUp:]), (-[IFPluginView keyDown:]),
	(-[IFPluginView IFURLHandle:resourceDataDidBecomeAvailable:]), (-[IFPluginView
	IFURLHandleResourceDidFinishLoading:data:]), (-[IFPluginView
	getURLNotify:target:notifyData:]), (-[IFPluginView getURL:target:]),
	(-[IFPluginView postURLNotify:target:len:buf:file:notifyData:]), (-[IFPluginView
	postURL:target:len:buf:file:]), (-[IFPluginView newStream:target:stream:]),
	(-[IFPluginView write:len:buffer:]), (-[IFPluginView destroyStream:reason:]),
	(-[IFPluginView status:]), (-[IFPluginView getValue:value:]), (-[IFPluginView
	setValue:value:]), (-[IFPluginView invalidateRect:]), (-[IFPluginView
	invalidateRegion:]), (-[IFPluginView forceRedraw]):
	* WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
	IFURLHandle:resourceDataDidBecomeAvailable:]):

	* src/kwq/kwqdebug.h:


git-svn-id: svn://svn.chromium.org/blink/trunk@1038 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-17 19:53:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/667e6947b4943f58da7f88c0c0f34090a632489c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000ps01s2j46t3dwq', 1, e'	* WebView.subproj/IFPreferences.mm: (+[IFPreferences load]):
	Changed another Georgia that I missed to Times New Roman.


git-svn-id: svn://svn.chromium.org/blink/trunk@1037 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-17 14:56:37.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/eecaee944cc6112bfc5fe2875a1b2f7255711398');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pt01s2df2autl5', 1, e'	* WebView.subproj/IFWebDataSource.mm:
	* WebView.subproj/IFWebDataSourcePrivate.mm:
	Touch these files to try to make Jersey build again.


git-svn-id: svn://svn.chromium.org/blink/trunk@1036 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-17 05:58:03.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7c1882108cc48026425f923200d4674dad89e67f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pu01s2x2bobabg', 1, e'WebCore:

	* src/kdelibs/khtml/khtml_part.cpp: Added. Not used yet, but maybe we\'ll use
	part of it some time soon.

	* src/kdelibs/khtml/khtml_part.h: Reenabled this file, and made changes so it
	could be used instead of our own header.
	* src/kwq/KWQKHTMLPart.h: Removed.

	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::KHTMLPart): Add parameter to match KDE.
	(KHTMLPart::settings): Add const to match KDE.
	(KHTMLPart::scheduleRedirection): Add parameter to match KDE.
	(KHTMLPart::encoding): Add const to match KDE.
	(KHTMLPart::urlCursor): Update return value to match KDE.
	(KHTMLPart::urlSelected): Add parameter to match KDE.
	(KHTMLPart::requestObject): Put plugins array on private object.
	(KHTMLPart::frames): Remove const to match KDE.
	(KHTMLPart::documentSource): Add const to match KDE.
	(KHTMLPart::setTitle): Put dataSource on private object.
	(KHTMLPart::setDataSource): New, not inline any more.
	(KHTMLPart::getDataSource): New, not inline any more.

	* src/libwebcore.exp: Update for function name changes.

	* src/kwq/khtml/khtml_settings.h:
	* src/kwq/KWQKHTMLSettings.mm: (KHTMLSettings::changeCursor): Add const.

	* src/kwq/KWQView.mm: (-[KWQHTMLView layout]): No need to check xmlDocImpl()
	and renderer() for NULL now, because KHTMLView::layout does.

	* src/kwq/KWQKloader.mm: (Loader::load): Use type instead of id.

WebKit:

	* WebView.subproj/IFBaseWebControllerPrivate.mm: Include khtml_part.h instead
	of KWQKHTMLPart.h.

	* WebView.subproj/IFWebFrame.mm: Include khtml_part.h instead of KWQKHTMLPart.h.

	* WebView.subproj/IFWebDataSource.mm: (-[IFWebDataSource documentTextFromDOM]):
	Remove an unneeded cast and an extra retain/autorelease.


git-svn-id: svn://svn.chromium.org/blink/trunk@1035 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-17 01:07:15.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/116aa49fb9ed8327d5c359060fc3b4a13802dc48');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pv01s23bys31mf', 1, e'	* WebView.subproj/IFWebFrame.h:
	* WebView.subproj/IFWebFrame.mm:
	* WebView.subproj/IFWebFramePrivate.h:
	Change view/setView back to be id, rather than IFWebView.
	In the future, the view may be some other kind of object.


git-svn-id: svn://svn.chromium.org/blink/trunk@1034 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 23:46:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d7e607ef0c1615dae96bb9be1fbcd3cf282ff867');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pw01s2vqfuggjm', 1, e'	Fixed bug Chris noticed where Alexander wasn\'t putting up
	an error sheet on failed page visits.

	* WebView.subproj/IFWebFramePrivate.mm:
	(-[IFWebFrame _isLoadComplete]): Don\'t set provisionalDataSource
	to nil until after sending it locationChangeDone.


git-svn-id: svn://svn.chromium.org/blink/trunk@1033 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-16 22:37:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/b1249cc5e727659c77df96e105a20516e67f2e48');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000px01s2eoll7ud6', 1, e'	* WebView.subproj/IFBaseWebController.mm: Remove special release handling because
	data sources now retain the controller as long as they are loading.

	* WebView.subproj/IFWebDataSource.mm: Remove special release handling because
	data sources now retain themselves as long as they are loading.

	* WebView.subproj/IFWebFrame.mm: Remove special release handling, because
	data sources now retain the controller as long as they are loading, and the
	controller retains the frame.

	* WebView.subproj/IFWebDataSourcePrivate.h: Add a "loading" boolean.
	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _setLoading:]):
	Change the "loading" state, retaining or releasing this object and the controller
	as necessary.
	(-[IFWebDataSource _updateLoading]): Update the loading state; called when
	some part of loading is done to see if it\'s all done.
	(-[IFWebDataSource _setController:]): Retain the new controller and release the
	old controller when loading.
	(-[IFWebDataSource _setPrimaryLoadComplete:]): Call _updateLoading.
	(-[IFWebDataSource _startLoading:]): Call _setLoading:YES.
	(-[IFWebDataSource _addURLHandle:]): Call _setLoading:YES.
	(-[IFWebDataSource _removeURLHandle:]): Call _updateLoading.

	* WebView.subproj/IFWebFrame.h: Use the real type, IFWebView, for setView and view.
	* WebView.subproj/IFWebFramePrivate.h: Formatting tweak.
	* WebKit.pbproj/project.pbxproj: Version wars.


git-svn-id: svn://svn.chromium.org/blink/trunk@1032 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 22:30:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4a05accfe1d29ef80781ddf943c18114d23f6e0e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000py01s2vepre71z', 1, e'	* src/kwq/kio/jobclasses.h:
	* src/kwq/KWQKjobclasses.mm: (TransferJob::setError): New.

	* src/kwq/KWQKloader.mm: (-[URLLoadClient IFURLHandleResourceDidCancelLoading:]),
	(-[URLLoadClient IFURLHandle:resourceDidFailLoadingWithResult:]):
	Set an error code so that the load will abort intead of continuing.

	* src/kwq/KWQKHTMLPart.mm: Removed some unused code.


git-svn-id: svn://svn.chromium.org/blink/trunk@1031 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 22:30:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6441b713de46c52b5d73cb182ec55784aab1084d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000pz01s25gp956gn', 1, e'	* WebView.subproj/IFWebViewPrivate.mm:
	(-[IFWebView _setController:]): removed a mistaken
	retain/release pair here for Darin.

	More code restructuring. BrowserDocument no longer implements
	the IFWebController protocol; its WebController object does all
	the progress handling now.

	Also made BrowserDocument stop loading on close for Darin, which fixes
	a problem he discovered.

	* BrowserDocument.h:
	* BrowserDocument.m: (-[BrowserDocument init]), (-[BrowserDocument dealloc]),
	(-[BrowserDocument close]), (-[BrowserDocument _webController]),
	(-[BrowserDocument goToURL:withFrameLoadType:]), (-[BrowserDocument isLoading]):
	* BrowserDocumentPrivate.h:
	* LoadProgressEntry.h:
	* LoadProgressEntry.m: (-[LoadProgressEntry status]):
	* LoadProgressMonitor.m: (-[LoadProgressMonitor
	addEntryForFrame:withType:stage:isMain:]):
	* LocationChangeHandler.h:
	* LocationChangeHandler.m: (-[LocationChangeHandler
	initWithFrame:forBrowserDocument:]), (-[LocationChangeHandler _webController]),
	(-[LocationChangeHandler _saveScrollPosition]), (-[LocationChangeHandler
	_scrollToTop]), (-[LocationChangeHandler _restoreScrollPosition]),
	(-[LocationChangeHandler locationChangeStarted]), (-[LocationChangeHandler
	locationChangeCommitted]), (-[LocationChangeHandler displayError:withStage:]),
	(-[LocationChangeHandler locationChangeDone:]), (-[LocationChangeHandler
	receivedPageTitle:forDataSource:]):
	* WebController.h:
	* WebController.m: (-[WebController initWithBrowserDocument:]), (-[WebController
	dealloc]), (-[WebController resetDocument]), (-[WebController document]),
	(-[WebController loadMonitor]), (-[WebController
	receivedProgress:forResource:fromDataSource:]), (-[WebController
	receivedError:forResource:partialProgress:fromDataSource:]), (-[WebController
	setStatusText:forDataSource:]), (-[WebController
	provideLocationChangeHandlerForFrame:]), (-[WebController
	pluginNotFoundSheetEnded:returnCode:contextInfo:]), (-[WebController
	pluginNotFoundForMIMEType:pluginPageURL:]), (-[WebController
	startedDownloadWithHandler:]), (-[WebController
	receivedProgress:forDownloadHandler:]), (-[WebController
	receivedError:forDownloadHandler:partialProgress:]):
	Much code moved from here to there; some code moved from there to here;
	callers updated to call the code on this object that used to be on that
	object, and vice-versa.


git-svn-id: svn://svn.chromium.org/blink/trunk@1030 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-16 22:22:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2c6d3ae7eb5e05841515d2035f151952bef9f832');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q001s2263yubp4', 1, e'	Change default font to "Times New Roman 11" rather than
	"Georgia 12" to be more like Macintosh Internet Explorer.

	* WebView.subproj/IFPreferences.mm:

	A little simplifying of private pointers.

	* MIME.subproj/IFDownloadHandler.h:
	* MIME.subproj/IFDownloadHandler.m:


git-svn-id: svn://svn.chromium.org/blink/trunk@1029 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 18:50:31.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4262d9ab89f8324424c14af517639631e304cb1f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q101s2kdg9hkvc', 1, e'	A little simplifying of private pointers.


git-svn-id: svn://svn.chromium.org/blink/trunk@1028 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 18:47:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e1e1b5743ab01e5c4961f118792b9e6f6dc51bc6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q201s2dsq8r2u7', 1, e'	Change headers so they don\'t include so much.
	Also change IF_LOAD_TYPE to IFLoadType.


git-svn-id: svn://svn.chromium.org/blink/trunk@1027 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-16 17:43:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9444a9f5b36749c1c70c65046f0d953b104e5528');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q301s2xdm0opwj', 1, e'2002-04-16  Kenneth Kocienda  <kocienda@apple.com>

        Moved IFError class from WebKit to WebFoundation.

	Labyrinth:

        Updated test and tool code to track this change.

        * Tests/WebFoundationC/ifurlhandlec-test.c: (ResourceDidFailLoadingCallBack):
        * Tools/wftool/WFTool.m: (-[WFTool
        IFURLHandle:resourceDidFailLoadingWithResult:]):


	WebBrowser:

        Updated includes due to this change.

        * BrowserDocument.m:
        * FrameProgressEntry.m:
        * LoadProgressEntry.m:
        * LocationChangeHandler.m:
        * WebBrowser.pbproj/project.pbxproj:


	WebCore:

        Updated URL handle client interface to pass an IFError in
        an error callback rather than a plain int. These files were
        modified due to this change.

        * src/kwq/KWQKHTMLPart.mm: (WCSetIFWebDataSourceMakeFunc):
        * src/kwq/KWQKloader.mm: (-[URLLoadClient
        IFURLHandle:resourceDidFailLoadingWithResult:]):

        Removed now unneeded file and function pointer symbol entry
        since WebCore code never needs to create an IFError now that
        those objects are created at a lower level (in WebFoundation).

        * src/kwq/WCError.h: Removed.
        * src/libwebcore.exp:


	WebFoundation:

        Updated URL handle client interface to pass an IFError in
        an error callback rather than a plain int. These files were
        modified due to this change.
        I added some additional API to the C glue to make IFError objects
        accessible from C code.

        * CacheLoader.subproj/IFURLHandle.m: (-[IFURLHandleInstanceVariables dealloc]),
        (-[IFURLHandleSynchronousClient IFURLHandle:resourceDidFailLoadingWithResult:]),
        (-[IFURLHandle notifyClientsDidFailLoading]):
        * CacheLoader.subproj/IFURLHandleC.h:
        * CacheLoader.subproj/IFURLHandleC.m: (IFErrorGetErrorCode),
        (IFErrorGetErrorDescription), (IFErrorGetFailingURL):
        * CacheLoader.subproj/IFURLHandleCallBackClient.m: (-[IFURLHandleCallBackClient
        IFURLHandle:resourceDidFailLoadingWithResult:]):
        * CacheLoader.subproj/IFURLHandleClient.h:
        * Misc.subproj/IFError.h:
        * Misc.subproj/IFError.m: (+[IFError initialize]), (+[IFError errorWithCode:]),
        (+[IFError errorWithCode:failingURL:]), (-[IFError initWithErrorCode:]),
        (-[IFError errorDescription]), (-[IFError description]):
        * Misc.subproj/WebFoundation.h:
        * WebFoundation.pbproj/project.pbxproj:


	WebKit:

        Moved IFError class from WebKit to WebFoundation.
        Updated includes due to this change.
        Updated URL handle client interface to pass an IFError in
        an error callback rather than a plain int. The URL client was
        modified due to this change.

        * Misc.subproj/IFError.h: Removed.
        * Misc.subproj/IFError.m: Removed.
        * Plugins.subproj/IFPluginView.mm:
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFBaseWebControllerPrivate.mm:
        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        IFURLHandle:resourceDidFailLoadingWithResult:]):
        * WebView.subproj/IFWebFramePrivate.mm:


git-svn-id: svn://svn.chromium.org/blink/trunk@1026 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-16 15:18:50.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5b55963ef8a88387fa0a9a66a2291bde08e4a26d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q401s26dcqg7vu', 1, e'Retroactively reviewed Darin\'s last two commits.


git-svn-id: svn://svn.chromium.org/blink/trunk@1025 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-16 00:55:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/94745984d0ebaedad1b921d23f705e270ed96363');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q501s2i8wwgs26', 1, e'Merged KDE 3.0 final code in and:

JavaScriptCore:

	* kjs/internal.cpp:
	* kjs/property_map.cpp:
	* kjs/ustring.h:
	Removed some unneeded <config.h> includes so we are more similar
	to the real KDE sources.

	Merged changes from KDE 3.0 final and did some build fixes.

	* JavaScriptCore.pbproj/project.pbxproj: Added nodes2string.cpp.

	* kjs/grammar.*: Regenerated.
	* kjs/*.lut.h: Regenerated.

WebCore:

	* src/kdelibs/khtml/rendering/render_text.cpp: (TextSlave::printDecoration):
	Remove some minor gratuitous diffs vs. KDE.

	* src/kdelibs/khtml/rendering/render_text.cpp: (TextSlave::printDecoration):
        Richard updated to reflect changes in KDE.

	* src/kdelibs/khtml/css/css_valueimpl.cpp:
	(FontFamilyValueImpl::FontFamilyValueImpl): Fix comment.
	* src/kdelibs/khtml/css/cssstyleselector.cpp: Remove some gratuitous diffs vs. KDE.
	* src/kdelibs/khtml/html/html_objectimpl.cpp:
	(HTMLEmbedElementImpl::parseAttribute): Remove unneeded copy from KWQ\'s early days.
	* src/kdelibs/khtml/html/html_tableimpl.cpp:
	(HTMLTableElementImpl::parseAttribute),
	(HTMLTablePartElementImpl::parseAttribute): Remove unneeded copy from KWQ\'s early days.
	* src/kdelibs/khtml/html/htmltokenizer.cpp: (HTMLTokenizer::processToken): Redo the
	APPLE_CHANGES ifdef here.
	* src/kdelibs/khtml/khtmlpart_p.h: Update to latest kde.
	* src/kdelibs/khtml/khtmlview.cpp: (KHTMLView::KHTMLView): Add ifdef APPLE_CHANGES.
	(KHTMLView::~KHTMLView): Add ifdef APPLE_CHANGES.
	(KHTMLView::print): Remove code left in here during merge process.
	* src/kwq/KWQKHTMLPart.mm: Remove unused setFontSizes(), fontSizes(), and
	resetFontSizes(). After the merge is landed, remove more.
	* src/libwebcore.exp: Export updateStyleSelector() for WebKit.

	Fix text to it displays at the right font size.

	* src/kdelibs/khtml/css/cssstyleselector.cpp:
	(CSSStyleSelector::computeFontSizes): Apply the same SCREEN_RESOLUTION hack here
	that we do elsewhere.
	* src/kdelibs/khtml/rendering/font.cpp: (Font::width): Use kMin instead of max (oops).
	(Font::update): Turn off font database chicanery.
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::zoomFactor): Use zoom factor 100, not 1.

	More fixes so text displays (still at wrong font size).

	* src/kdelibs/khtml/rendering/font.cpp: (max): New helper.
	(Font::drawText): Simplified implementation for now.
	(Font::width): Simplified implementation for now.
	* src/kwq/KWQColorGroup.mm: Reinstated QCOLOR_GROUP_SIZE.

	* src/kwq/qt/qfontmetrics.h: Removed charWidth and changed _width to take QChar *.
	* src/kwq/KWQFontMetrics.mm: Removed charWidth and changed _width to take QChar *.

	Merged changes from KDE 3.0 final. Other fixes to get things compiling.

	* src/kdelibs/khtml/css/css_valueimpl.cpp:
	(CSSStyleDeclarationImpl::setProperty): Fix unused variable.
	* src/kdelibs/khtml/khtmlview.cpp: (KHTMLView::contentsContextMenuEvent):
	Fix unused variable.
	* src/kdelibs/khtml/rendering/font.cpp: (Font::drawText), (Font::width),
	(Font::update): Disable special "nsbp" logic for now. We can reenable it
	if necessary.
	* src/kdelibs/khtml/rendering/render_replaced.cpp: Fix mismerge.
	* src/kdelibs/khtml/rendering/render_text.cpp: (RenderText::nodeAtPoint):
	Fix unused variable.
	* src/kwq/KWQApplication.mm: (QDesktopWidget::width), (QApplication::desktop):
	Fix mismerge.
	* src/kwq/KWQColorGroup.mm: Fix QCOLOR_GROUP_SIZE.
	* src/kwq/KWQFontMetrics.mm: (QFontMetrics::lineSpacing): New.
	(QFontMetrics::width): Remove unused optimization.
	* src/kwq/qt/qfontmetrics.h: Add lineSpacing().

        Merged changes from previous merge pass.

        2002-03-25  Darin Adler  <darin@apple.com>

        Last bit of making stuff compile and link. Probably will drop the merge now
        and take it up again when it\'s time to merge in KDE 3.0 final.

	* src/kwq/KWQEvent.mm: (QFocusEvent::reason): New.
	* src/kwq/KWQPainter.mm: (QPainter::drawText): New overload.

        2002-03-25  Darin Adler  <darin@apple.com>

	* src/kdelibs/khtml/rendering/font.cpp: (Font::width): Make it call _width so we
        don\'t lose the optimization.

	* src/kwq/KWQApplication.mm: (QDesktopWidget::screenNumber): New.
	(QDesktopWidget::screenGeometry): New.
        (QApplication::style): New.
	* src/kwq/KWQColorGroup.mm: (QColorGroup::highlight): New.
	(QColorGroup::highlightedText): New.
	* src/kwq/KWQFont.mm: (QFont::setPixelSize): New.
	* src/kwq/KWQFontMetrics.mm: (QFontMetrics::charWidth): New.
	* src/kwq/KWQKGlobal.mm: (KGlobal::locale): Implement.
        (KLocale::KLocale): New.
	(KLocale::languageList): New.
	* src/kwq/KWQKHTMLPart.mm: (KHTMLPart::sheetUsed): New.
	(KHTMLPart::setSheetUsed): New.
        (KHTMLPart::zoomFactor): New.
	* src/kwq/KWQKHTMLSettings.mm: (KHTMLSettings::mediumFontSize): New.
	* src/kwq/KWQScrollView.mm: (QScrollView::childX): New.
        (QScrollView::childY): New.

	* src/kwq/qt/qapplication.h: style() returns a QStyle &.
	* src/kwq/qt/qpalette.h: Add Highlight and HighlightedText.

        2002-03-24  Darin Adler  <darin@apple.com>

        More compiling. Still won\'t link.

	* src/kdelibs/khtml/khtmlview.cpp: Disable printing and drag and drop code.
	* src/kdelibs/khtml/rendering/render_text.cpp: (TextSlave::printDecoration):
        Temporarily turn off our smarter underlining since it relies on access to the
        string, and TextSlave doesn\'t have that any more.
	(RenderText::nodeAtPoint): Get rid of a workaround we don\'t need any more for
        a bug that was fixed by KDE folks.
	* src/kwq/KWQApplication.mm: (QApplication::desktop): Make the desktop be a
        QDesktopWidget.
	* src/kwq/qt/qnamespace.h: Add MetaButton.
	* src/kwq/qt/qtooltip.h: Add a maybeTip virtual function member and a virtual
        destructor.

        2002-03-24  Darin Adler  <darin@apple.com>

        Some fixes to get more stuff to compile.

	* src/kdelibs/khtml/ecma/kjs_dom.cpp: (DOMDocument::getValueProperty):
        Don\'t try to look at the private m_bComplete to display "complete". Just do
        "loading" and "loaded".
        * src/kdelibs/khtml/khtmlpart_p.h: #ifdef this all out for APPLE_CHANGES.
	* src/kdelibs/khtml/rendering/font.cpp: (Font::update): Add an explicit cast to
        int to avoid float -> int warning.
	* src/kdelibs/khtml/rendering/render_table.cpp: (RenderTable::calcColMinMax):
        Add an explicit cast to int to avoid uint compared with int warning.
	* src/kdelibs/khtml/xml/dom_docimpl.cpp: (DocumentImpl::recalcStyleSelector):
        Use sheetUsed() and setSheetUsed() functions on KHTMLPart intead of getting
        at private fields the way the real KDE code does.

        * src/kwq/KWQKHTMLPart.h: Declare zoomFactor(), sheetUsed(), and setSheetUsed().
	* src/kwq/KWQStyle.h: Add PM_DefaultFramWidth as another metric.
	* src/kwq/kdecore/klocale.h: Add languageList().
	* src/kwq/khtml/khtml_settings.h: Add mediumFontSize().
	* src/kwq/qt/qapplication.h: Add style() and QDesktopWidget.
	* src/kwq/qt/qevent.h: Add reason().
	* src/kwq/qt/qfont.h: Add setPixelSize(int).
	* src/kwq/qt/qfontmetrics.h: Add charWidth() and _charWidth() functions.
	* src/kwq/qt/qpainter.h: Add drawText() overload with position parameter.
	* src/kwq/qt/qpalette.h: Add highlight() and highlightedText().
	* src/kwq/qt/qscrollview.h: Add childX() and childY().

	* src/kwq/KWQApplication.mm: Change KWQDesktopWidget to QDesktopWidget.

WebKit:

	* WebView.subproj/IFPreferences.h:
	* WebView.subproj/IFPreferences.mm: (+[IFPreferences load]): Remove the old
	WebKitFontSizes preference.
	(-[IFPreferences mediumFontSize]), (-[IFPreferences setMediumFontSize:]): New.

	* WebView.subproj/IFWebView.mm: (-[IFWebView reapplyStyles]): Call
	updateStyleSelector() instead of recalcStyle().

        Merged changes from previous merge branch.

        2002-03-25  Darin Adler  <darin@apple.com>

	* WebView.subproj/IFPreferences.mm: (+[IFPreferences load]):
        Add WebKitMediumFontSizePreferenceKey.

WebBrowser:

	* Preferences.subproj/TextPreferences.m: (-[TextPreferences defaultFontSize]),
	(-[TextPreferences setDefaultFontSize:]): Just get and set the new mediumFontSize
	preference rather than doing the whole fontSizes preference dance.


git-svn-id: svn://svn.chromium.org/blink/trunk@1024 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-15 23:43:21.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/cbc0a810a423ff1b0c7dfa817a4324301f3c5eed');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qz01s2wdl8ydqt', 1, e'	* Plugins.subproj/IFPluginView.mm:
	(-[IFPluginView initWithFrame:plugin:url:mime:arguments:mode:]):
	Fix the fix. It was bumping argsCount even when not putting an
	argument into the array.


git-svn-id: svn://svn.chromium.org/blink/trunk@1056 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-22 14:39:52.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6dcd1dd2141b387cdc3c512816e91ca045836716');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q601s2wkadcgj1', 1, e'	* Plugins.subproj/IFNullPluginView.mm: (-[IFNullPluginView drawRect:]):
	Moved a line of code to prevent pluginNotFound message from being
	sent twice.

Fixed 2896326 -- Alexander should show an error when pluginNotFoundForMIMEType: pluginPageURL: is called

Also made the minimum change required to use Alexander without running into
assertions, until the locationChangeHandler changes are finished.

	* BrowserDocument.m:
	(-[BrowserDocument _saveScrollPosition]),
	(-[BrowserDocument _restoreScrollPosition]):
	Commented out guts of these methods, which were triggering an assertion.
	(The assertion is being triggered by the in-flux state of the
	locationChangeHandler stuff.)

	(-[BrowserDocument locationChangeStartedForFrame:]),
	(-[BrowserDocument locationChangeCommittedForFrame:]),
	(-[BrowserDocument locationChangeDone:forFrame:]):
	Changed wording of WEBKITDEBUG messages.

	(-[BrowserDocument pluginNotFoundSheetEnded:returnCode:contextInfo:]),
	(-[BrowserDocument pluginNotFoundForMIMEType:pluginPageURL:]):
	Implementation for sheet that appears if plugin isn\'t found.


git-svn-id: svn://svn.chromium.org/blink/trunk@1017 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-15 20:34:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/283ff4bf54035816477977f5603fb62de274e34c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q701s28fheys16', 1, e'Fixed (removed) experimental code.


git-svn-id: svn://svn.chromium.org/blink/trunk@1016 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-15 20:21:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/60d1fba06350b257788f2822bebf109fc8bb98db');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q801s2qpsj1r7l', 1, e'Fixed compile problem.


git-svn-id: svn://svn.chromium.org/blink/trunk@1014 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-15 20:12:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9e52eb8b54ac54460aaf3a687e10c671c14d7ba1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000q901s2u38eaqw9', 1, e'removerd o


git-svn-id: svn://svn.chromium.org/blink/trunk@1013 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-15 20:05:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a2b81a8fa37989d5abf963286854fdd6240ba5bf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000qa01s2nlm2vtpk', 1, e'        Changes to IFLocationChangeHandler.

        Experimental allocator code, not to be used, not thread safe.!


git-svn-id: svn://svn.chromium.org/blink/trunk@1012 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-15 19:56:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e052edba6ca7abc47beb2e94d0e9a296eed2b5ae');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000qb01s2mao85x7y', 1, e'        * MIME.subproj/IFContentHandler.m: (-[IFContentHandler HTMLDocument]):

        Made sure I didn\'t unnecessarily allocate html document strings

        * MIME.subproj/IFDownloadHandler.h:
        * MIME.subproj/IFDownloadHandler.m: (-[IFDownloadHandler suggestedFilename]),
        (-[IFDownloadHandler openAfterDownload:]):

        Added the mentioned API\'s

        * MIME.subproj/IFDownloadHandlerPrivate.h:
        * MIME.subproj/IFDownloadHandlerPrivate.m: (-[IFDownloadHandlerPrivate init]),
        (-[IFDownloadHandlerPrivate dealloc]), (-[IFDownloadHandlerPrivate
        _suggestedFilename]), (-[IFDownloadHandlerPrivate _cancelDownload]),
        (-[IFDownloadHandlerPrivate _storeAtPath:]), (-[IFDownloadHandlerPrivate
        _finishedDownload]), (-[IFDownloadHandlerPrivate _openAfterDownload:]),
        (-[IFDownloadHandlerPrivate _openFile]), (-[IFDownloadHandlerPrivate _saveFile]),
        (-[IFDownloadHandler _initWithURLHandle:mimeHandler:]):

        Cleaned up and added a lot error checking code to IFDownloadHandlerPrivate

        * Plugins.subproj/IFNullPluginView.mm: (-[IFNullPluginView
        initWithFrame:mimeType:arguments:]), (-[IFNullPluginView drawRect:]):

        Made sure I didn\'t unnecessarily allocate images

        * Resources/plugin_document_template.html:

        Plugins now have 100% of the window


git-svn-id: svn://svn.chromium.org/blink/trunk@1011 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-15 19:26:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/62b77cafc9af0589d2dc8d42d160b42609d6cbc3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000qc01s2q7i06a0l', 1, e'        Fixed build failure. Forgot to make IFDownloadHandler.h
        a public header.

        * WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@1004 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-13 02:28:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e33d0f05cffa389ef0d1ae84bb0a193d210d15d3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000qd01s2a2i8a1k4', 1, e'        First implementation of IFDownloadHandler and IFDownloadHandlerPrivate.

        Added:
        - (void) startedDownloadWithHandler:(IFDownloadHandler *)downloadHandler
        - (void) receivedProgress:(IFLoadProgress *)progress forDownloadHandler$
        - (void) receivedError:(IFError *)error forDownloadHandler:(IFDownloadH$

        to Alex\'s WebController.


git-svn-id: svn://svn.chromium.org/blink/trunk@1003 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-13 01:03:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/db9419f3304762af675be08dbc361b30a14d12a2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw5m000qe01s2bwoazu9i', 1, e'
        Added support for non-html content. Non-html content is embedded in a
        contrived HTML document.

        * English.lproj/IFError.strings:
        * MIME.subproj/IFContentHandler.h: Added.
        * MIME.subproj/IFContentHandler.m: Added.
         (-[IFContentHandler initWithMIMEHandler:URL:]), (-[IFContentHandler
        HTMLDocument]), (-[IFContentHandler dealloc]):
        * MIME.subproj/IFMIMEDatabase.h:
        * MIME.subproj/IFMIMEDatabase.m: (-[IFMIMEDatabase MIMEHandlerForMIMEType:]),
        (setMimeHandlers):
        * MIME.subproj/IFMIMEHandler.h:
        * MIME.subproj/IFMIMEHandler.m: (-[IFMIMEHandler
        initWithMIMEType:handlerType:handlerName:]), (-[IFMIMEHandler description]):
        * Misc.subproj/IFError.h:
        * Misc.subproj/IFError.m: (+[IFError initialize]):
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView dealloc]),
        (-[IFPluginView stop]):
        * Resources/plugin_document_template.html: Added.
        * Resources/text_document_template.html: Added.
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFMainURLHandleClient.h:
        * WebView.subproj/IFMainURLHandleClient.mm: (-[IFMainURLHandleClient
        initWithDataSource:part:]), (-[IFMainURLHandleClient dealloc]),
        (-[IFMainURLHandleClient IFURLHandleResourceDidFinishLoading:data:]),
        (-[IFMainURLHandleClient IFURLHandle:resourceDataDidBecomeAvailable:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1002 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-11 21:28:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ed41d7e2c7bd71bdfbdaebb417d02ff7c3949894');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qf01s25l8tbxbj', 1, e'        Fixed problem with errors potentially being reported on
        wrong data source by moving collected errors from frame
        to datasource.

        Little changes in preparation for events.


git-svn-id: svn://svn.chromium.org/blink/trunk@1077 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-26 00:01:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/d0eb01303c6552d5385b5aa4dfb9fca885274fd0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rv01s211ttylq5', 1, e'        Fix to 2915688.  I wasn\'t checking if the main document error had an error, only
        the resource errors.


git-svn-id: svn://svn.chromium.org/blink/trunk@1085 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-29 23:34:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f04419b9c1dc740e183e91260415fdf85d94570c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qg01s21rz2kru8', 1, e'	Add a workaround for Radar 2912404 (kCFStringEncodingInvalidId is negative even
	though CFStringEncoding is unsigned)

	* kwq/KWQCharsets.mm:
	(KWQCFStringEncodingFromIANACharsetName):
	(KWQCFStringEncodingFromMIB):
	* kwq/KWQtextcodec.mm:
	(QTextCodec::codecForMib):
	(QTextCodec::codecForName):
	* kwq/make-charset-table.pl:
	Add casts to (CFStringEncoding) wherever we use kCFStringEncodingInvalidId.


git-svn-id: svn://svn.chromium.org/blink/trunk@1076 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-25 21:50:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aa2f147a746232dc706419e2e25538e77935dbaf');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qh01s2witkmseu', 1, e'WebCore:

	Rework plugin code to prepare to move more of it into WebKit.

	* khtml/rendering/render_applet.cpp:
	(RenderApplet::RenderApplet): Create a widget for the applet using
	the new simpler API.

	* kwq/kdecore/kconfig.h:
	* kwq/KWQKConfigBase.mm: Eliminate KConfigBase.
	Set things up so we are poised to handle the other non-plugin
	config keys easily in the future.

	* kwq/KWQKHTMLPart.mm: (KHTMLPart::requestObject): Use the new simpler
	IFPluginWidgetCreate API instead of the older WCPluginWidget one.

	* kwq/qt/qstring.h: Add simpler conversions to/from NSString.
	* kwq/KWQString.mm: (QString::fromNSString): New.

	* kwq/WCPluginWidget.h: Made this API simpler both for the C++
	side and the Objective-C side. There\'s now no class, and only one
	function that needs to be supplied (normally by WebKit).
	* kwq/WCJavaAppletWidget.h: Same thing for the Java case.

	* kwq/WCJavaAppletWidget.mm:
	(IFSetJavaAppletViewCreationFunction): New.
	(IFJavaAppletWidgetCreate): New. Most of the code that was in here
	is now moved into WebKit.
	* kwq/WCPluginWidget.mm:
	(IFSetPluginViewCreationFunction): New.
	(IFPluginWidgetCreate): New. Most of the code that was in here
	is now moved into WebKit.

	* libwebcore.exp: Update for new function names.

WebKit:

	Rework plugin code to prepare to move more of here from WebCore.

	* Plugins.subproj/IFPluginView.mm:
	(IFPluginViewCreate): New. Does all the work of creating an NSView
	for a plug-in, including stuff previously done in WebCore.
	(IFJavaAppletViewCreate): Same as above, for Java applets.
	(+[IFPluginView load]): Set up the function pointers using the new
	improved WebCore API.

	* Plugins.subproj/IFNullPluginView.mm:
	(-[IFNullPluginView load]): Remove this setup because now there\'s
	no separate call to set up a null plug-in.


git-svn-id: svn://svn.chromium.org/blink/trunk@1075 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-25 18:05:43.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/06ce924591f900ff6ca3db4d0e7c553c888913c3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qi01s2g4dzuo6f', 1, e'	Fixed 2911915 (Exception in -[IFWebView mouseMoved])

	* WebView.subproj/IFWebView.mm:
	(-[IFWebView mouseDown:]): Changed "mouseUp" to "mouseDown"
	in exception message.

	(-[IFWebView mouseMoved:]): Removed bogus event-type checking
	that caused this method to (always?) throw an exception when
	invoked.


git-svn-id: svn://svn.chromium.org/blink/trunk@1074 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-25 16:45:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/06ca99592b31a53493fe92db46d5724f91237922');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qj01s2bqc8hos1', 1, e'Renamed [IFWebDataSource frame] to [IFWebDataSource webFrame]

        Labyrinth/WebBrowser/ChangeLog
        Labyrinth/WebBrowser/FrameProgressEntry.m
        Labyrinth/WebBrowser/IFWebFrameAdditions.m
        Labyrinth/WebBrowser/LoadProgressMonitor.m
        Labyrinth/WebBrowser/LocationChangeHandler.m
        Labyrinth/WebBrowser/WebController.m
        Labyrinth/WebBrowser/WebBrowser.pbproj/project.pbxproj
        Labyrinth/WebCore/ChangeLog
        Labyrinth/WebCore/kwq/KWQKHTMLPart.mm
        Labyrinth/WebCore/kwq/external.h Labyrinth/WebKit/ChangeLog
        Labyrinth/WebKit/WebKit.pbproj/project.pbxproj
        Labyrinth/WebKit/WebView.subproj/IFBaseWebControllerPrivate.mm
        Labyrinth/WebKit/WebView.subproj/IFMainURLHandleClient.mm
        Labyrinth/WebKit/WebView.subproj/IFWebDataSource.h
        Labyrinth/WebKit/WebView.subproj/IFWebDataSource.mm
        Labyrinth/WebKit/WebView.subproj/IFWebDataSourcePrivate.mm


git-svn-id: svn://svn.chromium.org/blink/trunk@1073 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-25 01:15:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c903920a68415592553d3d69aa45c9cb8b183435');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qk01s2gy1pnz85', 1, e'        Changed ordering of messages so activity viewer doesn\'t get -1 bytesSoFar
        for cancelled messages.


git-svn-id: svn://svn.chromium.org/blink/trunk@1072 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-24 23:02:53.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ae819022790b1a079139c82ecc916e8ec30d6e73');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00ql01s27n195d91', 1, e'added release markers to the changelogs
"Alexander 0.3c2 (v1)"


git-svn-id: svn://svn.chromium.org/blink/trunk@1070 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sheridan', '2002-04-24 22:47:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5a8fd79903edd505e12779d7f3e35ad12b0630b1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qm01s2n70w9cnk', 1, e'	Get rid of all NEED_BOGUS_XXX.

	* khtml/java/Makefile.am: Remove -DNEED_BOGUS_TEXTSTREAMS and
	-DNEED_BOGUS_X_DEFINES.
	* khtml/rendering/Makefile.am: Remove -DNEED_BOGUS_X_DEFINES.
	* khtml/xml/Makefile.am: Remove -DNEED_BOGUS_TEXTSTREAMS.
	* kwq/Makefile.am: Remove -DNEED_BOGUS_X_DEFINES and KWQKJavaEmbed.mm.
	* kwq/KWQKJavaEmbed.mm: Removed.

	* kwq/KWQDef.h: Remove XEvent define (inside NEED_BOGUS_X_DEFINES).

	* kwq/qt/qtextstream.h: Don\'t look at NEED_BOGUS_TEXTSTREAMS.
	* kwq/KWQtextstream.mm: Don\'t look at NEED_BOGUS_TEXTSTREAMS.

	* khtml/java/javaembed.h: Made this just a QWidget typedef for now.
	* khtml/java/kjavaappletwidget.cpp: ifdef out the unused setWindow function.


git-svn-id: svn://svn.chromium.org/blink/trunk@1069 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-24 16:49:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ecb2f88456a29d330ba1d9510bcaa551470003c6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qn01s27cuc9sdn', 1, e'        * khtml/css/css_valueimpl.cpp:
        (CSSPrimitiveValueImpl::computeLengthFloat):
        * khtml/css/cssstyleselector.cpp:
        (CSSStyleSelector::computeFontSizes):
        Remove our 72/96 dpi changes. They weren\'t doing much good.
        But this doesn\'t fix all the 72/96 dpi issues. It\'s just the start.

        * kwq/khtml/khtml_settings.h:
        * kwq/KWQKHTMLSettings.mm:
        Remove some unused stuff: charset(), setCharset(), availableFamilies(),
        fontSizes(), SCREEN_RESOLUTION.


git-svn-id: svn://svn.chromium.org/blink/trunk@1068 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-23 22:43:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/553d1b6adfc4b159dc87d0311f86588aa37188e6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qo01s2gycy94is', 1, e'WebKit:
        * WebKit.pbproj/project.pbxproj:

        Took IFDownloadHandler.h out of the public headers.

        * WebView.subproj/IFLocationChangeHandler.h:

        Removed deprecated methods.

        * WebView.subproj/IFWebFrame.mm:
        (-[IFWebFrame setProvisionalDataSource:]):

        Don\'t call locationChangeStarted anymore.

WebBrowser:
        * LocationChangeHandler.m:

        Removed locationChangeStarted and downloadingWithHandler as they are
        deprecated.


git-svn-id: svn://svn.chromium.org/blink/trunk@1067 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-23 22:25:07.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9deedbe3f0b2a39bc59ff4490b95cc7c0e3f1d42');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r001s265juu12u', 1, e'	Fix a plugins memory trasher that was making Alexander crash on
	the abcnews.com test page in cvs-torture-test:

	* Plugins.subproj/IFPluginView.mm:
	(-[IFPluginView initWithFrame:plugin:url:mime:arguments:mode:]):
	Use a new maxArguments variable to size the argument and value
	arrays - with the old code argsCount would end up twice the size
	it should be, and the arguments would all get written past the end
	of the argument array.


git-svn-id: svn://svn.chromium.org/blink/trunk@1055 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-22 07:02:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bd181f1737b56e6ab62cbaaf45cb17688d53f8d1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qp01s2zc56t2n1', 1, e'        * MIME.subproj/IFDownloadHandler.h:
        * MIME.subproj/IFDownloadHandler.m: Removed.
        * MIME.subproj/IFDownloadHandler.mm: Added.
        (-[IFDownloadHandler initWithDataSource:]):
        (-[IFDownloadHandler dealloc]):
        * MIME.subproj/IFDownloadHandlerPrivate.h: Removed.
        * MIME.subproj/IFDownloadHandlerPrivate.m: Removed.

        Made IFDownloadHandler a private class that retains the data source
        and saves the data to disk.

        * WebKit.pbproj/project.pbxproj:

        Removed IFDownloadHandlerPrivate

        * WebView.subproj/IFBaseWebControllerPrivate.mm:
        (-[IFBaseWebController _mainReceivedProgress:forResource:fromDataSource:]):

        Only send locationChangeCommitted if its shown inline.

        * WebView.subproj/IFMainURLHandleClient.mm:
        (-[IFMainURLHandleClient IFURLHandleResourceDidFinishLoading:data:]):

        Save data with IFDownloadHandler

        (-[IFMainURLHandleClient IFURLHandle:resourceDataDidBecomeAvailable:]):

        If its a download, set the provisionalDataSource on the frame to nil.

        * WebView.subproj/IFWebDataSource.h:
        * WebView.subproj/IFWebDataSource.mm:
        (-[IFWebDataSource webFrame]):
        (-[IFWebDataSource pageTitle]):
        (-[IFWebDataSource contentPolicy]):

        Added some accessor methods. Spelling fix pageTitle.


git-svn-id: svn://svn.chromium.org/blink/trunk@1066 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-23 21:00:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/12bcc434cead64491c91ad98430cb11328b9a646');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qq01s2280ncm7x', 1, e'2002-04-23  Kenneth Kocienda  <kocienda@apple.com>

	Reviewed by: Darin Adler

        Fix for Radar 2908403 (Fix names in WebFoundation extensions code)

        Extensions code in WebFoundation now is in its own namespace.
        Where we have added categories to existing Foundation and AppKit
        classes, the categories begin with the IF prefix. All method names
        begin with the _IF_ prefix.

        The files here were changed to use the new names.

        In addition, private methods on publicly WebFoundation classes
        now have an underscopre prepended to their names.

        * Tests/CookieManager/wkcookiemanager-test.m:
        (main)
        * Tests/WebFoundation-Misc/ifnsarrayextensions-test.m:
        (main)
        * Tests/WebFoundation-Misc/ifnscalendardateextensions-test.m:
        (main)
        * Tests/WebFoundation-Misc/ifnsobjectextensions-test.m:
        (main)
        * Tests/WebFoundation-Misc/ifnsstringextensions-test.m:
        (main)
        * Tests/WebFoundation-Misc/ifnsthreadextensions-test.m:
        (-[ThreadTest run:]):
        (main)
        * Tools/HotSpots/hotspots.m:
        (ProcessLine)
        (SortByValueInDictionary):
        (DumpTables)
        (PrintCallGraphForFrame):
        * Tools/wftool/main.m:
        (main)

        * WebCore/kwq/KWQTextArea.mm:
        (-[KWQTextArea paragraphs])

        * WebBrowser/AppController.m:
        (-[AppController _addHistoryToMenu])
        * WebBrowser/BrowserWindow.m:
        (-[BrowserWindow controlTextDidEndEditing:])
        * WebBrowser/GlobalHistory.m:
        (-[GlobalHistory outlineView:objectValueForTableColumn:byItem:])
        (-[GlobalHistory expandToday])

        * WebFoundation/AuthenticationManager.subproj/IFAuthenticationHandlerDispatcher.m:
        (-[IFAuthenticationHandlerDispatcher checkIfReadyToStartAuthentication:]):
        * WebFoundation/AuthenticationManager.subproj/IFAuthenticationManager.m:
        (-[IFAuthenticationManager removeAuthenticationHandler:]):
        (IFNSURLRemoveAnythingAfterPath):
        (IFNSURLCanonicalRoot):
        (AddAuthenticationHeader):
        (-[IFAuthenticationManager _invokeHandlersWithURL:realm:forRequest:withCallback:context:]):
        (-[IFAuthenticationManager _tryRequest:]):
        (-[IFAuthenticationManager _retryWaitingRequests]):
        (-[IFAuthenticationManager IFAuthenticationRequest:authenticationDone:]):
        (-[IFAuthenticationManager _addCredentialsToInitialHTTPRequest:]):
        (-[IFAuthenticationManager _checkForAuthenticationFailureInHTTPResponse:withURL:]):
        (-[IFAuthenticationManager _addCredentialsToRetryHTTPRequest:afterFailureResponse:withCallback:context:]):
        (-[IFAuthenticationManager _cancelAddCredentialsToRetryHTTPRequest:]):
        * WebFoundation/AuthenticationManager.subproj/IFAuthenticationManagerPrivate.h:
        * WebFoundation/AuthenticationManager.subproj/IFAuthenticationRequest.m:
        (-[IFAuthenticationRequest _readyToStartAuthenticationDone:]):
        * WebFoundation/AuthenticationManager.subproj/IFAuthenticationRequestPrivate.h:
        * WebFoundation/CacheLoader.subproj/IFFileURLHandle.m:
        (+[IFFileURLHandle canInitWithURL:]):
        (-[IFFileURLHandle contentLength]):
        * WebFoundation/CacheLoader.subproj/IFFileURLProtocolHandler.m:
        (+[IFFileURLProtocolHandler canInitWithURL:]):
        * WebFoundation/CacheLoader.subproj/IFHTTPURLHandle.m:
        (+[IFHTTPURLHandle canInitWithURL:]):
        (-[IFHTTPURLHandle setResponseHeaders:]):
        * WebFoundation/CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
        (+[IFHTTPURLProtocolHandler canInitWithURL:]):
        (-[IFHTTPURLProtocolHandler endLoadInBackground]):
        (-[IFHTTPURLProtocolHandler dealloc]):
        (-[IFHTTPURLProtocolHandler requestURL]):
        (-[IFHTTPURLProtocolHandler addIfModifiedSinceHeader:]):
        (-[IFHTTPURLProtocolHandler addCookieHeaders:]):
        (-[IFHTTPURLProtocolHandler addAuthenticationHeaders:andCall:]):
        (-[IFHTTPURLProtocolHandler addRequestMessageBody:]):
        (-[IFHTTPURLProtocolHandler performHTTPHeaderRead:]):
        (-[IFHTTPURLProtocolHandler setRedirectedURL:]):
        (-[IFHTTPURLProtocolHandler cacheObjectIsValid:]):
        (-[IFHTTPURLProtocolHandler cacheObjectRequiresRevalidation:]):
        (-[IFHTTPURLProtocolHandler shouldCacheResourceData]):
        (-[IFHTTPURLProtocolHandler parseCacheControlAttributes:]):
        * WebFoundation/CacheLoader.subproj/IFURLHandle.m:
        (_sendCallbacks):
        (-[IFURLHandleInstanceVariables initWithHandle:]):
        (-[IFURLHandle cancelLoadInBackground]):
        (+[IFURLHandle initialize]):
        (-[IFURLHandle _submittedAttributes]):
        (-[IFURLHandle _setAttribute:forKey:]):
        (-[IFURLHandle _setContentLength:]):
        (-[IFURLHandle _loadType]):
        (-[IFURLHandle _backgroundLoadDidBegin]):
        (-[IFURLHandle _backgroundLoadDidBegin:]):
        (-[IFURLHandle _didLoadData:]):
        (-[IFURLHandle _backgroundLoadComplete]):
        (-[IFURLHandle _backgroundLoadFailedWithResultCode:]):
        (-[IFURLHandle _didRedirectToURL:]):
        (+[IFURLHandle _registerDefaults]):
        (-[IFURLHandle _cacheable]):
        (-[IFURLHandle _setCacheable:]):
        (-[IFURLHandle _setStatusCode:]):
        (-[IFURLHandle _setResultCode:]):
        (-[IFURLHandle _setFinalURL:]):
        (-[IFURLHandle _postCallback:]):
        (-[IFURLHandle _sendCallbacks]):
        (-[IFURLHandle _notifyClientsDidBeginLoading]):
        (-[IFURLHandle _notifyClientsDidCancelLoading]):
        (-[IFURLHandle _notifyClientsDataDidBecomeAvailable]):
        (-[IFURLHandle _notifyClientsDidFinishLoading]):
        (-[IFURLHandle _notifyClientsDidFailLoading]):
        (-[IFURLHandle _notifyClientsDidRedirectToURL]):
        * WebFoundation/CacheLoader.subproj/IFURLHandleC.m:
        (IFURLHandleBackgroundLoadDidBegin):
        (IFURLHandleBackgroundLoadComplete):
        (IFURLHandleBackgroundLoadFailedWithResultCode):
        (IFURLHandleDidRedirectToURL):
        * WebFoundation/CacheLoader.subproj/IFURLHandlePrivate.h:
        * WebFoundation/CacheLoader.subproj/IFURLLoad.m:
        (-[IFURLLoad doubleAttributeForKey:]):
        (-[IFURLLoad updateHandles]):
        (-[IFURLLoad succeeded]):
        (-[IFURLLoad failedWithResultCode:]):
        (+[IFURLLoad initialize]):
        (-[IFURLLoad didBeginLoading:]):
        * WebFoundation/CacheLoader.subproj/IFURLLoadManager.m:
        (-[IFURLLoadManager initWithDefaultStack]):
        (-[IFURLLoadManager requestWithURLHandle:]):
        (-[IFURLLoadManager _syncCachesNotification:]):
        * WebFoundation/CookieManager.subproj/IFCookie.m:
        (setDefaultsFromOriginURL):
        (setDomain):
        (-[IFCookie _cookieToV0HeaderSegment]):
        (+[IFCookie requestHeadersFromCookieArray:]):
        (+[IFCookie cookieWithV0Spec:forURL:]):
        (+[IFCookie cookieArrayFromResponseHeaders:forURL:]):
        (-[IFCookie compareForHeaderOrder:]):
        * WebFoundation/CookieManager.subproj/IFCookieManager.m:
        (-[IFCookieManager cookieRequestHeadersForURL:]):
        (-[IFCookieManager _cookieRequestHeadersForURL:withExtraCookies:]):
        (-[IFCookieManager description]):
        * WebFoundation/CookieManager.subproj/IFCookieManagerPrivate.h:
        * WebFoundation/Database.subproj/IFURLFileDatabase.m:
        (-[IFURLFileDatabase removeAllObjects]):
        (-[IFURLFileDatabase performSetObject:forKey:]):
        (-[IFURLFileDatabase open]):
        * WebFoundation/Misc.subproj/IFMultipartForm.m:
        (-[IFMultipartForm encodeMultipartForm]):
        * WebFoundation/Misc.subproj/IFNSArrayExtensions.h:
        * WebFoundation/Misc.subproj/IFNSArrayExtensions.m:
        (-[NSArray _IF_mappedArrayWithSelector:]):
        (-[NSArray _IF_mappedArrayWithFunction:context:]):
        (-[NSArray _IF_filteredArrayWithSelector:]):
        (-[NSArray _IF_arrayByRemovingIfSelector:]):
        (-[NSArray _IF_filteredArrayWithSelector:withObject:]):
        (-[NSArray _IF_doesEveryElementSatisfyPredicate:]):
        (-[NSArray _IF_indexOfObjectSatisfyingPredicate:withObject:]):
        (-[NSArray _IF_encodeWWWFormURLData]):
        * WebFoundation/Misc.subproj/IFNSCalendarDateExtensions.h:
        * WebFoundation/Misc.subproj/IFNSCalendarDateExtensions.m:
        (-[NSCalendarDate _IF_compareDay:]):
        (-[NSCalendarDate _IF_isToday]):
        * WebFoundation/Misc.subproj/IFNSDictionaryExtensions.h:
        * WebFoundation/Misc.subproj/IFNSDictionaryExtensions.m:
        (-[NSDictionary _IF_doubleForKey:]):
        (-[NSDictionary _IF_floatForKey:]):
        (-[NSDictionary _IF_unsignedLongForKey:]):
        (-[NSDictionary _IF_longForKey:]):
        (-[NSDictionary _IF_unsignedIntForKey:]):
        (-[NSDictionary _IF_intForKey:]):
        (-[NSDictionary _IF_unsignedShortForKey:]):
        (-[NSDictionary _IF_shortForKey:]):
        (-[NSDictionary _IF_boolForKey:]):
        (-[NSDictionary _IF_encodeWWWFormURLData]):
        (-[NSMutableDictionary _IF_setDouble:forKey:]):
        (-[NSMutableDictionary _IF_setFloat:forKey:]):
        (-[NSMutableDictionary _IF_setUnsignedLong:forKey:]):
        (-[NSMutableDictionary _IF_setLong:forKey:]):
        (-[NSMutableDictionary _IF_setUnsignedInt:forKey:]):
        (-[NSMutableDictionary _IF_setInt:forKey:]):
        (-[NSMutableDictionary _IF_setUnsignedShort:forKey:]):
        (-[NSMutableDictionary _IF_setShort:forKey:]):
        (-[NSMutableDictionary _IF_setBool:forKey:]):
        * WebFoundation/Misc.subproj/IFNSFileManagerExtensions.h:
        * WebFoundation/Misc.subproj/IFNSFileManagerExtensions.m:
        (-[NSFileManager _IF_createDirectoryAtPathWithIntermediateDirectories:attributes:]):
        (-[NSFileManager _IF_createFileAtPathWithIntermediateDirectories:contents:attributes:directoryAttributes:]):
        (-[NSFileManager _IF_createIntermediateDirectoriesForPath:attributes:]):
        (-[NSFileManager _IF_fileExistsAtPath:isDirectory:traverseLink:]):
        (-[NSFileManager _performRemoveFileAtPath:]):
        (-[NSFileManager _IF_backgroundRemoveFileAtPath:]):
        * WebFoundation/Misc.subproj/IFNSMutableDataExtensions.h:
        * WebFoundation/Misc.subproj/IFNSMutableDataExtensions.m:
        (-[NSMutableData _IF_appendFormat:]):
        (-[NSMutableData _IF_appendEncodedString:format:arguments:]):
        (-[NSMutableData _IF_appendEncodedString:format:]):
        * WebFoundation/Misc.subproj/IFNSObjectExtensions.h:
        * WebFoundation/Misc.subproj/IFNSObjectExtensions.m:
        (-[NSObject _IF_performBooleanSelector:]):
        (-[NSObject _IF_performBooleanSelector:withObject:]):
        (-[NSObject _IF_encodeWWWFormURLData]):
        * WebFoundation/Misc.subproj/IFNSStringExtensions.h:
        * WebFoundation/Misc.subproj/IFNSStringExtensions.m:
        (-[NSString _IF_isCaseInsensitiveEqualToString:]):
        (-[NSString _IF_hasCaseInsensitiveSuffix:]):
        (-[NSString _IF_countOfString:]):
        (-[NSString _IF_looksLikeDomainName]):
        (-[NSString _IF_looksLikeIPAddress]):
        (-[NSString _IF_domainMatches:]):
        (-[NSString _IF_splitAtNonDateCommas]):
        (-[NSString _IF_parseAsKeyValuePair]):
        (-[NSString _IF_parseAsKeyValuePairHandleQuotes:]):
        (-[NSString _IF_stringByTrimmingWhitespace]):
        (-[NSString _IF_hasSubstring:atIndex:]):
        (-[NSString _IF_encodeStringBase64]):
        (-[NSString _IF_encodeWWWFormURLData]):
        (-[NSString _IF_encodeWWWFormURLData:]):
        (-[NSString _IF_mimeTypeFromContentTypeHeader]):
        (-[NSString _IF_characterSetFromContentTypeHeader]):
        * WebFoundation/Misc.subproj/IFNSThreadExtensions.h:
        * WebFoundation/Misc.subproj/IFNSThreadExtensions.m:
        (+[NSThread _joinableThreadBody:]):
        (+[NSThread _IF_createJoinableThreadWithSelector:toTarget:withObject:]):
        (+[NSThread _IF_joinThread:]):
        (+[NSThread _IF_sleep:]):
        * WebFoundation/Misc.subproj/IFNSURLExtensions.h:
        * WebFoundation/Misc.subproj/IFNSURLExtensions.m:
        (+[NSURL _IF_URLWithScheme:user:password:host:port:path:parameter:query:fragment:]):

        * WebKit/History.subproj/IFWebHistoryPrivate.m:
        (-[IFWebHistoryPrivate findIndex:forDay:]):
        (-[IFWebHistoryPrivate arrayRepresentation]):
        (-[IFWebHistoryPrivate _loadHistoryGuts:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1065 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-23 18:39:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/da4a162606454e6a175f564f75d23553478e53a3');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qr01s28vwmfddo', 1, e'2002-04-23  Kenneth Kocienda  <kocienda@apple.com>

        * kwq/KWQPixmap.mm:
        (QPixmap::QPixmap): Fixed unneeded leak of an NSImage in
        the case where we are still covering for a double-release
        bug in AppKit. No need to add insult to injury. :)


git-svn-id: svn://svn.chromium.org/blink/trunk@1064 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-23 15:49:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/520bf33589c2c89adea917b54fcefcf62ec1d610');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qs01s21ffuvxsk', 1, e'	Fix width of non-breaking spaces. There\'s code to hack this
	at the KDE level for fonts that don\'t have non-breaking space
	characters, but we need it even for fonts that do.

	Not sure why this worked better on Puma, but now it\'s fine on
	both Puma and Jaguar.

	* kwq/KWQFontMetrics.mm:
	(ConvertCharactersToGlyphs): New. Turns non-breaking spaces into
	normal spaces if needed.
	(-[KWQLayoutInfo drawString:atPoint:withFont:color:]),
	(-[KWQLayoutInfo _initializeCaches]), (_rectForString): Change to
	call ConvertCharactersToGlyphs instead of ATSUConvertCharToGlyphs.


git-svn-id: svn://svn.chromium.org/blink/trunk@1063 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-23 01:37:04.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0ead2ca9ae01098faf9a19130d77eb9c989b0aa1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qt01s2aw5qsg1y', 1, e'WebFoundation:
        * Misc.subproj/IFError.h:
        * Misc.subproj/IFError.m:
        (+[IFError initialize]):

        Removed old WebKit errors, added IFCantShowMIMEType.

WebKit:
        * WebView.subproj/IFMainURLHandleClient.mm:
        (-[IFMainURLHandleClient IFURLHandle:resourceDataDidBecomeAvailable:]):

        Send an IFError when we\'re asked to show content we can\'t handle.

        * WebView.subproj/IFWebDataSourcePrivate.mm:

        Cleaning

WebBrowser:
        * LocationChangeHandler.m:
        (-[LocationChangeHandler requestContentPolicyForMIMEType:]):

        Cleaned this up a little.


git-svn-id: svn://svn.chromium.org/blink/trunk@1062 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-23 01:08:25.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5670570dd895fa887899c5bf154d04bff6c43de8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qu01s22j0jiq02', 1, e'WebBrowser:
        * LocationChangeHandler.m:
        (-[LocationChangeHandler requestContentPolicyForMIMEType:]):

        A nil type means that this is a file URL.

WebKit:
        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFBaseWebController.mm:
        (-[IFBaseWebController haveContentPolicy:andPath:forLocationChangeHandler:]):
        * WebView.subproj/IFWebDataSourcePrivate.h:
        * WebView.subproj/IFWebDataSourcePrivate.mm:

        Fixed frames which I broke in the previous commit. We now set the content policy
        on all child frames instead of just the main frame.


git-svn-id: svn://svn.chromium.org/blink/trunk@1061 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-23 00:09:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3e4da8824fb5bf08d59eea1f2d94c7fbe6525604');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qv01s2sl56wgii', 1, e'Updated log.


git-svn-id: svn://svn.chromium.org/blink/trunk@1060 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-22 22:19:35.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e5024bff998554bf4e3fc118d509d8710bfb4a67');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qw01s2cf47l98q', 1, e'	* kwq/qt/qpixmap.h:
	* kwq/KWQPixmap.mm:
	(QPixmap::QPixmap): Clear needsCopyOnWrite flag in all the
	constructors other than the copy constructor. Set it in the copy
	constructor.
	(QPixmap::~QPixmap): Simplify.
	(QPixmap::mask): Always return 0 rather than leaking a QBitmap each time,
	since Qt uses 0 to mean "no mask".
	(QPixmap::isNull): Simplify.
	(QPixmap::resize): Do the copy here if we need it, and do the setScalesWhenResized:
	call in here instead of trying to do it elsewhere.
	(QPixmap::xForm): Only copy the pixmap once.
	(QPixmap::operator=): Set the needsCopyOnWrite flag. Also change the retain/release
	idiom around so we don\'t need to check for self-assignment.

	* khtml/ecma/Makefile.am: Don\'t build kjs_debugwin any more.
	* khtml/ecma/kjs_debugwin.cpp: Removed.
	* khtml/ecma/kjs_debugwin.h: Removed.


git-svn-id: svn://svn.chromium.org/blink/trunk@1059 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-22 22:14:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/c8d3e940d0d5fe9c4fc649ed241e5a2d4d6732fa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qx01s2gl44mbow', 1, e'WebBrowser:
        * LocationChangeHandler.m:
        (-[LocationChangeHandler requestContentPolicyForMIMEType:]):
        Initial implementation of Alex\'s interaction with out content policy API.
        Simply made Alex show types that we handle inline and save types we don\'t

        * WebController.m:
        Removed some deprecated methods.

WebKit:
        * MIME.subproj/IFMIMEHandler.h:
        * MIME.subproj/IFMIMEHandler.m:
        (+[IFMIMEHandler showableMIMETypes]):
        (+[IFMIMEHandler saveFileWithPath:andData:]):
        (+[IFMIMEHandler saveAndOpenFileWithPath:andData:]):

        Added the above factory methods.

        * WebView.subproj/IFBaseWebController.mm:
        (-[IFBaseWebController haveContentPolicy:andPath:forLocationChangeHandler:]):

        Save the content policy and download path on the datasource.

        * WebView.subproj/IFMainURLHandleClient.mm:
        (-[IFMainURLHandleClient IFURLHandleResourceDidCancelLoading:]):
        (-[IFMainURLHandleClient IFURLHandleResourceDidFinishLoading:data:]):
        (-[IFMainURLHandleClient IFURLHandle:resourceDataDidBecomeAvailable:]):
        (-[IFMainURLHandleClient IFURLHandle:resourceDidFailLoadingWithResult:]):

        Made IFMainURLHandleClient use our new content policy API rather than
        IFDownloadHandler.

        * WebView.subproj/IFWebController.h:

        Removed some deprecated methods.

        * WebView.subproj/IFWebDataSourcePrivate.h:
        * WebView.subproj/IFWebDataSourcePrivate.mm:
        (-[IFWebDataSource _downloadPath]):
        (-[IFWebDataSource _setDownloadPath:]):
        (-[IFWebDataSource _contentPolicy]):
        (-[IFWebDataSource _setContentPolicy:]):

        Added the above methods.

WebCore:
        Added a new method to WCPluginDatabase allHandledMIMETypes.
        It returns an  array of the mime types that plug-ins handle.

        * kwq/WCPluginDatabase.h:
        * kwq/WCPluginDatabase.mm:
        (-[WCPluginDatabase allHandledMIMETypes]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1058 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-22 18:28:17.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/972149d49f1e254bd5c3f1135c7f2f91b9450a30');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00qy01s2qnk5u226', 1, e'Fix ChangeLog typo.


git-svn-id: svn://svn.chromium.org/blink/trunk@1057 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-22 16:35:11.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/57132ccd9f42602994f967fb09ac6fd7a16cce55');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r101s2evobt8tr', 1, e'	Problems loading iframes seemed to be due to NSURL objects that
	were not normalized, so I made the NSURL creation all be done
	by KURL, which fixed the problem.

	* kwq/KWQKHTMLPart.mm: (KHTMLPart::requestFrame), (KHTMLPart::submitForm),
	(KHTMLPart::khtmlMouseReleaseEvent):
	* kwq/KWQKjobclasses.mm:
	Call getNSURL instead of creating NSURLs by converting to strings.

	* kwq/kdecore/kurl.h:
	* kwq/KWQKURL.mm: (KURL::getNSURL): New.


git-svn-id: svn://svn.chromium.org/blink/trunk@1054 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-20 14:52:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7d3ada57c7577b892967c14f5d4e60330cc880e7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r201s2nnz857wg', 1, e'2002-04-19  Kenneth Kocienda  <kocienda@apple.com>

	WebFoundation:

        Changes to support submission of forms using HTTP POST.

        These changes focus on adding the form data to a post request.

        * CacheLoader.subproj/IFHTTPURLProtocolHandler.m: (-[IFHTTPURLProtocolHandler
        addRequestMessageBody:]):
        * ChangeLog:
        * WebFoundation.pbproj/project.pbxproj:


	WebCore:

        Changes to support submission of forms using HTTP POST.

        These changes move us over to using the new WebKit interface for creating
        WebDataSource instances, one that passes a handle rather than just a URL,
        enabling the specific request method to be communicated to WebFoundation.
        This fixes:

        Radar 2903602 (IFWebDataSource API must passes attributes and flags to IFURLHandle)

        Fixed handling of password fields:

        Radar 2903605 (WebCore form processing drops out password input data)

        Added some hacks to get form <input type=image ...> working correctly:

        Radar 2907198 (Forms not getting submitted correctly when <input type=image>)


        * khtml/rendering/render_form.cpp: (RenderImageButton::RenderImageButton),
        (RenderImageButton::~RenderImageButton), (RenderImageButton::printObject):
        * khtml/rendering/render_form.h:
        * kwq/KWQKHTMLPart.mm: (KHTMLPart::requestFrame), (KHTMLPart::submitForm),
        (KHTMLPart::khtmlMouseReleaseEvent):
        * kwq/KWQNSTextField.mm: (-[KWQNSTextField setPasswordMode:]), (-[KWQNSTextField
        textDidChange:]), (-[KWQNSTextField stringValue]):
        * kwq/Makefile.am:
	* kwq/KWQInvisibleButton.h: Added
	* kwq/KWQInvisibleButton.mm: Added

	WebKit:

        Changes to support submission of forms using HTTP POST.

        These changes move us over to using the new WebKit interface for creating
        WebDataSource instances, one that passes a handle rather than just a URL,
        enabling the specific request method to be communicated to WebFoundation.
        This fixes:

        Radar 2903602 (IFWebDataSource API must passes attributes and flags to IFURLHandle)

        * WebKit.pbproj/project.pbxproj:
        * WebView.subproj/IFWebDataSource.h:
        * WebView.subproj/IFWebDataSource.mm: (IFWebDataSourceMake), (-[IFWebDataSource
        initWithURL:]), (-[IFWebDataSource initWithHandle:]):
        * WebView.subproj/IFWebDataSourcePrivate.h:
        * WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _startLoading:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1053 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-04-19 22:09:42.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/820ba291aa23a5ccc9ac69f9de4ef9ca522e3b7c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r301s2os0gde9c', 1, e'        Updated comments to reflect new API.


git-svn-id: svn://svn.chromium.org/blink/trunk@1052 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-19 16:57:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0d5aa35e327cd1474368f89ea82d52a06389bdf2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r401s2m8jt57vr', 1, e'	* Plugins.subproj/IFPluginView.h: Re-add the attributes and values arrays,
	since they need to live the life of the plugin.
	* Plugins.subproj/IFPluginView.mm: (newCString): New function to make a C++
	new-allocated C string from an NSString.
	(-[IFPluginView initWithFrame:plugin:url:mime:arguments:mode:]): Move code
	to allocate the arrays back here.
	(-[IFPluginView dealloc]): Deallocate the arrays and their contents.
	(-[IFPluginView start]): Simplify now that it does no work.


git-svn-id: svn://svn.chromium.org/blink/trunk@1051 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-19 15:45:58.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/aab239f36ddeb72fc7b906d9adb621e90a227dab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r501s2zwkbnfy0', 1, e'2002-04-18  Chris Blumenberg  <cblu@apple.com>

        Made stop and start work better. Fixed a bug darin made.

        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm: (-[IFPluginView
        initWithFrame:plugin:url:mime:arguments:mode:]), (-[IFPluginView setWindow]),
        (-[IFPluginView start]), (-[IFPluginView stop]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1050 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-19 03:18:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/bac02235ca4bf89c2c056a6ec1ad8da6ebe34f1b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r601s2wu5ilj9v', 1, e'Fixed typo.


git-svn-id: svn://svn.chromium.org/blink/trunk@1049 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-19 03:07:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/39b2fcf3a9e7bfcd129bfbdc7ab76484786a1a1c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r701s2whhkhjc1', 1, e'New API for content policy.


git-svn-id: svn://svn.chromium.org/blink/trunk@1048 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-19 03:02:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6aa94326ebb8c7536a4b036c6e0948a1e8e44f92');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjsw8gg00r801s2m82vknwa', 1, e' Oops. Take out -Wstrict-prototypes, put back -Wmissing-prototypes.


git-svn-id: svn://svn.chromium.org/blink/trunk@1047 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-18 23:01:34.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6c693b37e2cf7022f1ea99ea5a677ec0827b7b8c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000r901s25rem6ke8', 1, e'        First pass at font substitution.  Find a substitute font to
        use when the specified font doesn\'t have glyphs for the characters that
        need to be drawn.

        Works correctly but hasn\'t been optimized yet, VERY slow.
        Will optimize this evening and tomorrow.  Try www.yahoo.co.jp,
        it will take a long time to render be eventually will draw correctly.


git-svn-id: svn://svn.chromium.org/blink/trunk@1108 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-05-07 23:51:24.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/f4afa395313ca7bac1965415c44d205981da7fc8');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000ra01s2snxt0csf', 1, e'	* kwq/KWQFontMetrics.mm: Fixed storage leak by initializing refCount.


git-svn-id: svn://svn.chromium.org/blink/trunk@1107 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-07 23:36:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a687c23a7d27b7ec65cb4b9ef56e57b9fc24fdaa');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rb01s24bogsqge', 1, e'	Oops. These files don\'t belong at the top level.

	* IFWebCoreViewFactory.h: Removed.
	* IFWebCoreViewFactory.m: Removed.
	* WebCoreSupport.subproj/IFWebCoreViewFactory.h: Added.
	* WebCoreSupport.subproj/IFWebCoreViewFactory.m: Added.
	* WebKit.pbproj/project.pbxproj:


git-svn-id: svn://svn.chromium.org/blink/trunk@1106 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-07 21:41:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/6ecab5d7f57818d15808488821a2942ca7e8a484');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rc01s2vlryis9m', 1, e'WebCore:

	Move more plugin code into WebKit.

	Stop using IF for anything in WebCore to help make it clear what\'s part of
	the BSD licensed stuff and what\'s part of our proprietary stuff.

	* libwebcore.exp: Names of what exported changed.
	* kwq/Makefile.am: Source file names changed.

	* kwq/IFTextRenderer.h: Renamed to WebCoreTextRenderer.
	* kwq/IFTextRendererFactory.h: Renamed to WebCoreTextRendererFactory.
	* kwq/IFTextRendererFactory.m: Renamed to WebCoreTextRendererFactory.
	* kwq/WebCoreTextRenderer.h: Renamed from IFTextRenderer.
	* kwq/WebCoreTextRendererFactory.h: Renamed from IFTextRendererFactory.
	* kwq/WebCoreTextRendererFactory.m: Renamed from IFTextRendererFactory.

	* kwq/KWQFontMetrics.mm:
	* kwq/KWQPainter.mm:
	Updated for IF -> WebCore name change.

	* kwq/WebCoreViewFactory.h: Added.
	* kwq/WebCoreViewFactory.m: Added.

	* kwq/KWQKConfigBase.mm: (KConfig::readEntry): (KConfig::readNumEntry):
	Use the new [WebCoreViewFactory pluginsInfo] so we don\'t have to have
	the plugin database in WebCore any more.

	* kwq/WCJavaAppletWidget.h:
	* kwq/WCJavaAppletWidget.mm: (IFJavaAppletWidgetCreate):
	* kwq/WCPluginWidget.h:
	* kwq/WCPluginWidget.mm: (IFPluginWidgetCreate):
	Remove creation function machinery, and use the WebCoreViewFactory instead.

	* kwq/WCPlugin.h: Moved to WebKit.
	* kwq/WCPlugin.mm: Moved to WebKit.
	* kwq/WCPluginDatabase.h: Moved to WebKit.
	* kwq/WCPluginDatabase.mm: Moved to WebKit.
	* kwq/npapi.h: Moved to WebKit.
	* kwq/npapi.mm: Moved to WebKit.

WebKit:

	Move more plugin code here from WebCore.

	* IFWebCoreViewFactory.h: Added.
	* IFWebCoreViewFactory.m: Added.

	* Plugins.subproj/IFPlugin.h: Moved from WebCore.
	* Plugins.subproj/IFPlugin.m: Moved from WebCore.
	* Plugins.subproj/IFPluginDatabase.h: Moved from WebCore.
	* Plugins.subproj/IFPluginDatabase.m: Moved from WebCore.
	* Plugins.subproj/npapi.h: Moved from WebCore.
	* Plugins.subproj/npapi.m: Moved from WebCore.

	* WebKit.pbproj/project.pbxproj: Source file names changed

	* MIME.subproj/IFMIMEDatabase.m:
	* MIME.subproj/IFMIMEHandler.m:
	* Plugins.subproj/IFPluginView.h:
	* Plugins.subproj/IFPluginView.mm:
	Updated for WC -> IF name change.

	* WebCoreSupport.subproj/IFCachedTextRenderer.h: Renamed to IFTextRenderer.
	* WebCoreSupport.subproj/IFCachedTextRenderer.m: Renamed to IFTextRenderer.
	* WebCoreSupport.subproj/IFCachedTextRendererFactory.h: Renamed to IFTextRendererFactory.
	* WebCoreSupport.subproj/IFCachedTextRendererFactory.m: Renamed to IFTextRendererFactory.
	* WebCoreSupport.subproj/IFTextRenderer.h: Renamed from IFCachedTextRenderer.
	* WebCoreSupport.subproj/IFTextRenderer.m: Renamed from IFCachedTextRenderer.
	* WebCoreSupport.subproj/IFTextRendererFactory.h: Renamed from IFCachedTextRendererFactory.
	* WebCoreSupport.subproj/IFTextRendererFactory.m: Renamed from IFCachedTextRendererFactory.
	Renamed to take "Cached" out of the name now that the simpler name is
	available.

	* WebView.subproj/IFWebView.mm:
	(-[IFWebView initWithFrame:]): Create shared IFWebCoreViewFactory.
	(-[IFWebView delayLayout:]): Use WEBKITDEBUG, not KWQDEBUG.
	(-[IFWebView notificationReceived:]): Use WEBKITDEBUG, not KWQDEBUG.


git-svn-id: svn://svn.chromium.org/blink/trunk@1105 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-07 21:10:38.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1658a75e9dc3ffc7162b9c638dd97ab0b3900e9d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rw01s2lpea32pg', 1, e'        Restored file, line, and function to log messages.


git-svn-id: svn://svn.chromium.org/blink/trunk@1084 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-04-29 17:06:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/944f14691f9f38d652d668df6a4d1da37b5fa6ab');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rd01s2qctqrxaa', 1, e'	* Tools/Scripts/cvs-fix-patch: Tweak error handling a tiny bit,
	make usage error go to stderr, and make it not touch the file if
	dift -f doesn\'t end up fixing anything.

	* Tools/Scripts/mv-if-different: Added. Useful to overwrite a file
	with a new version without touching the mod date if they are equal.

	* Tools/Scripts/set-alex-version: Use mv-if-different so we don\'t
	touch files if we aren\'t changing anything.

WebFoundation:

	Use isEqualToString: instead of isEqual: more consistently. But only for strings.

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	(+[IFHTTPURLProtocolHandler canonicalizeURL:]):

WebKit:

	Use isEqualToString: instead of isEqual: more consistently. But only for strings.

	* WebCoreSupport.subproj/IFCachedTextRendererFactory.m:
	(-[IFFontCacheKey isEqual:]):
	* WebView.subproj/IFBaseWebController.mm:
	(-[IFBaseWebController _frameNamed:fromFrame:]):

WebBrowser:

	Use isEqualToString: instead of isEqual: more consistently. But only for strings.

	* AppController.m:
	(-[AppController handleGURLEvent:withReplyEvent:]):
	* BookmarksController.m:
	(-[BookmarksController outlineView:objectValueForTableColumn:byItem:]):
	(-[BookmarksController outlineView:setObjectValue:forTableColumn:byItem:]):
	* BrowserWindow.m:
	(-[BrowserWindow setLocationFieldText:]):
	(-[BrowserWindow toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:]):
	(-[BrowserWindow toolbarWillAddItem:]):
	* Debug/DOMTree.mm:
	(-[DOMTreeDataSource outlineView:objectValueForTableColumn:byItem:]):
	* Debug/RenderTree.mm:
	(-[RenderTreeDataSource outlineView:objectValueForTableColumn:byItem:]):
	* LocationChangeHandler.m:
	(-[LocationChangeHandler _saveScrollPosition]):
	(-[LocationChangeHandler _restoreScrollPosition]):
	* StopAndGoButton.m:
	(-[StopAndGoButton setActiveImageSet:]):
	* Test/PageLoadTestController.m:
	(-[PageLoadTestController tableView:objectValueForTableColumn:row:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1104 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-07 15:56:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2d2b8a1b917223c3611eca431ffd473f489175ad');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000re01s2e4o5ijlc', 1, e'
	Some improvements to the bookmark changed notifications.

	* Bookmarks.subproj/IFBookmarkGroup.h:
	* Bookmarks.subproj/IFBookmarkGroup.m:
	(-[IFBookmarkGroup _sendChangeNotificationForBookmark:childrenChanged:]):
	(-[IFBookmarkGroup _setTopBookmark:]):
	(-[IFBookmarkGroup _bookmarkDidChange:]):
	(-[IFBookmarkGroup _bookmarkChildrenDidChange:]):
	Send bookmark that changed and whether its children changed as part of
	change notifications, so clients can choose to do less unnecessary work.

	* Bookmarks.subproj/IFBookmarkLeaf.m:
	(-[IFBookmarkLeaf setTitle:]): Check for the no-change case
	and bail out without sending notification when you find it.

	Fixed 2919147 (Organize Bookmarks menu item doesn\'t do anything).

	First check-in of Bookmarks window. You can remove one or more bookmarks,
	and you can edit the title & address of existing bookmarks, but that\'s all
	so far. Removed the Erase All Bookmarks item from the Debug menu since you
	can do it easily from the Bookmarks window now. Added keyboard equivalents
	for the Bookmarks, History, and Activity Viewer windows in the style of
	Mail. Also miscellaneous cleanups.

	* BookmarksController.h: Added.
	* BookmarksController.m: Added.
	(-[BookmarksController shouldCascadeWindows]):
	(-[BookmarksController _receivedBookmarksChangedNotification:]):
	(-[BookmarksController _setUpToolbar]):
	(-[BookmarksController windowDidLoad]):
	(-[BookmarksController dealloc]):
	(-[BookmarksController _removeAllBookmarks]):
	(-[BookmarksController _removeSelectedBookmarks:]):
	(-[BookmarksController outlineView:child:ofItem:]):
	(-[BookmarksController outlineView:isItemExpandable:]):
	(-[BookmarksController outlineView:numberOfChildrenOfItem:]):
	(-[BookmarksController outlineView:objectValueForTableColumn:byItem:]):
	(-[BookmarksController outlineView:setObjectValue:forTableColumn:byItem:]):
	(-[BookmarksController outlineView:willDisplayCell:forTableColumn:item:]):
	(-[BookmarksController toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:]):
	(-[BookmarksController toolbarAllowedItemIdentifiers:]):
	(-[BookmarksController toolbarDefaultItemIdentifiers:]):
	(-[BookmarksController toolbarDidRemoveItem:]):
	(-[BookmarksController toolbarWillAddItem:]):
	(-[BookmarksController validateUserInterfaceItem:]):
	New class that manages the Bookmarks window.

	* AppController.h:
	* AppController.m:
	(-[AppController dealloc]): release bookmarks controller.
	(-[AppController showBookmarks:]): create bookmarks controller if necessary,
	and tell it to show its window.

	* BrowserWindow.m:
	Changed static strings to #defines.
	(-[BrowserWindow setUpToolbar]): Remove call that explicitly sets toolbar
	display mode; we\'ve no reason to override the default.

	* Debug/DebugUtilities.m:
	(-[DebugUtilities createDebugMenu]):
	Remove Erase All Bookmarks.

	* English.lproj/Bookmarks.nib: New nib file for Bookmarks window.

	* English.lproj/MainMenu.nib: Wired up "Organize Bookmarks..." and
	"Bookmarks" menu items; added keyboard shortcuts for Window menu items.

	* GlobalHistory.m:
	(-[GlobalHistory outlineView:objectValueForTableColumn:byItem:]):
	Changed two isEquals to isEqualToStrings.
	(-[GlobalHistory _anyURLsSelected]): Replaced anyDatesSelected with this.
	(-[GlobalHistory updateButtons]): Allow Add to Bookmarks to be enabled even if
	some dates are selected; just ignore them (at least one non-date has to be selected).
	(-[GlobalHistory addSelectedItemsToBookmarks:]): Removed obsolete comment.

	* Resources/Images/delete.tiff: New image, stolen for mail, used in Bookmarks window.

	* WebBrowser.pbproj/project.pbxproj: Updated for new files.


git-svn-id: svn://svn.chromium.org/blink/trunk@1103 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-07 01:27:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/10a0d9bf5369ae3e4b0f51fa3b6be55c3cf24f61');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rf01s2jhzhx6qr', 1, e'i	* Makefile.am: Generate the PFE precompiled headers to be used
	by automake compiles. Currently these don\'t have any dependency
	tracking, but I\'m sure Maciej can fix that if he wants to.

	* configure.in: Go from "xNDEBUG" to "NDEBUG" now that precompiled
	headers aren\'t in the way. Pass in the --load-pch option to all the
	various compiles so they get the precompiled headers.

	* Tests/libiftest/Makefile.am: Generate a top_srcdir.h file rather
	than passing it in on the command line. This works around a PFE bug
	with -D, Radar 2921026.
	* Tests/libiftest/IFTestDirectory.c: Use top_srcdir.h.
	* Tests/libiftest/.cvsignore: Ignore top_srcdir.h.

	* Tests/qt/qpoint-test.cpp: (main): Take out an unused variable and
	all the USING_BORROWED_QPOINT code.

	* Tools/Makefile.am: Don\'t built the HotSpots directory for now, since
	it runs into a PFE bug and we usually use the application version now.

	* Tools/Scripts/check-non-ASCII: Skip preprocessor directives.
	* Tools/Scripts/cvs-abandon: Tweak.

JavaScriptCore:

	* JavaScriptCorePrefix.h: Added.
	* JavaScriptCore.pbproj/project.pbxproj: Use PFE precompiling.
	Also switch from xNDEBUG to NDEBUG.

WebFoundation:

	Reviewed by Ken Kocienda:

	* WebFoundationPrefix.h: Added.
	* WebFoundation.pbproj/project.pbxproj: Use PFE precompiling.
	Also switch from xNDEBUG to NDEBUG.

	* AuthenticationManager.subproj/IFAuthenticationManager.m:
	* CookieManager.subproj/IFCookie.m:
	* Misc.subproj/IFNSStringExtensions.m:
	* Misc.subproj/WebFoundationDebug.m:
	Add undefs to work around PFE problem with inline functions, Radar 2920554.

	* CacheLoader.subproj/IFHTTPURLProtocolHandler.m:
	Fix include to work with normal Project Builder way of dealing with frameworks.
	Switch from xNDEBUG to NDEBUG.

	* CacheLoader.subproj/IFURLLoad.m:
	* CookieManager.subproj/IFCookie.m:
	* Database.subproj/IFURLFileDatabase.m:
	* Misc.subproj/IFError.m:
	* Misc.subproj/IFMonitor.h:
	* Misc.subproj/IFMonitor.m:
	* Misc.subproj/IFRecursiveReadWriteLock.h:
	Use import instead of include.

	* Misc.subproj/IFCFNetworkExtensions.m: Added.
	* Misc.subproj/IFCFRunLoopExtensions.m: Added.
	* Misc.subproj/IFCFNetworkExtensions.c: Removed.
	* Misc.subproj/IFCFRunLoopExtensions.c: Removed.
	Renamed so we could share the Objective-C precompile. No need to compile this code
	as plain C, even though it doesn\'t use any Objective-C features.

	* Misc.subproj/WebFoundationDebug.h: Get rid of format attribute because of bug
	2920557. Switch from xNDEBUG to NDEBUG.

WebCore:

	* WebCorePrefix.h: Added.

	* .cvsignore: Ignore the .pfe files in this directory.

	* khtml/dom/dom_doc.cpp:
	* khtml/dom/dom_text.cpp:
	Added namespace directives as a clean workaround for a conflict
	with the struct named Comment in <Carbon/AIFF.h>

	* kwq/KWQFont.mm:
	* kwq/KWQFontMetrics.mm:
	* kwq/KWQKGlobal.mm:
	* kwq/KWQListImpl.mm:
	* kwq/KWQPtrDictImpl.h:
	* kwq/KWQVectorImpl.mm:
	* kwq/kwqdebug.h:
	* kwq/qt/qcolor.h:
	* kwq/qt/qcombobox.h:
	* kwq/qt/qregion.h:
	* kwq/qt/qstring.h:
	* kwq/qt/qwidget.h:
	Remove old workaround for conflicts with Fixed, Rect, and Boolean.
	It does not good with a precompiled header anyway, and there is a
	more elegant small fix in the KDE code itself.

	* kwq/qt/qpoint.h:
	* kwq/KWQPointArray.mm: (QPointArray::setPoints):
	Work around bug with va_arg and PFE by not using varargs here.

	* kwq/KWQRect.mm: (QRect::unite): (QRect::operator&):
	Use std::min and std::max instead of defining our own MIN and MAX, which
	conflict with something in one of the headers we are precompiling (error
	message did not make it clear which).

	* kwq/KWQView.mm: (-[KWQHTMLView layout]), (-[KWQHTMLView drawRect:]):
	Switch from xNDEBUG to NDEBUG.

	* kwq/Makefile.am: Remove stuff for getting at the header inside the
	ApplicationServices and QD frameworks, since that code is now in WebKit.

	* kwq/kwqdebug.h: Get rid of format attribute because of bug 2920557.
	Switch from xNDEBUG to NDEBUG.

	* kwq/kwqdebug.mm: Switch from xNDEBUG to NDEBUG.

	* kwq/qt/qstring.h: Define QT_VERSION in here instead of on the command
	line to work around a PFE bug with -D, Radar 2921026.

WebKit:

	* WebKitPrefix.h: Added.
	* WebKit.pbproj/project.pbxproj: Use PFE precompiling.
	Also switch from xNDEBUG to NDEBUG.

	* Misc.subproj/WebKitDebug.h: Get rid of format attribute because of bug
	2920557. Switch from xNDEBUG to NDEBUG.

	* Misc.subproj/WebKitDebug.m:
	Add undef to work around PFE problem with inline functions, Radar 2920554.

	* Plugins.subproj/IFPluginView.mm: Changed how we work around the bug in
	the CGS defines.

	* WebCoreSupport.subproj/IFCachedTextRenderer.h: Change include of the
	private QD header to use the form that works with more-normal way of
	getting at the private bits of frameworks.

	* WebCoreSupport.subproj/IFCachedTextRenderer.m: Use the header
	<CoreGraphics/CoreGraphicsPrivate.h> instead of <CoreGraphics/CGFontPrivate.h>.

	* Misc.subproj/IFCache.mm:
	* WebView.subproj/IFLoadProgress.mm:
	* WebView.subproj/IFWebFrame.mm:
	* WebView.subproj/IFWebFramePrivate.mm:
	* WebView.subproj/IFWebView.mm:
	Changed includes to imports.

WebBrowser:

	* WebBrowserPrefix.h: Added.
	* WebBrowser.pbproj/project.pbxproj: Use PFE precompiling.
	Also switch from xNDEBUG to NDEBUG.

	* Debug/CacheController.m: Renamed to make it Objective C rather
	than Objective C++.
	* Debug/CacheController.mm: Removed.

	* main.m: Use the real __CFA2UC. Use import instead of include.
	* ___CFA2UC.c: Remove our copy.

	* Debug/DOMTree.mm:
	* Debug/RenderTree.mm:
	* Preferences.subproj/ActiveContentPreferences.h:
	* Preferences.subproj/AppearancePreferences.h:
	* Preferences.subproj/GeneralPreferences.h:
	* Preferences.subproj/SecurityPreferences.h:
	* Preferences.subproj/TextPreferences.h:
	* Preferences.subproj/WBPreferences.h:
	* Test/PageLoadTestLogger.m:
	Use import instead of include.


git-svn-id: svn://svn.chromium.org/blink/trunk@1102 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-06 23:40:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/798649275b2c47557316e5ba9912f29f1d95feb0');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rg01s2c145ghop', 1, e'        Made start and stop work cleaner.

        Now observe defaults changes so that plug-ins
        are disabled or enabled immediately (2871725).

        * Plugins.subproj/IFPluginNullEventSender.m:
        (-[IFPluginNullEventSender sendNullEvents]):
        * Plugins.subproj/IFPluginView.h:
        * Plugins.subproj/IFPluginView.mm:
        (-[IFPluginView initWithFrame:plugin:url:mime:arguments:mode:]):
        (-[IFPluginView start]):
        (-[IFPluginView stop]):
        (-[IFPluginView drawRect:]):
        (-[IFPluginView windowWillClose:]):
        (-[IFPluginView defaultsHaveChanged:]):


git-svn-id: svn://svn.chromium.org/blink/trunk@1101 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-05-06 23:14:12.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5104b1f351f422b073251b23536fa0f4b6b53116');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rh01s2qg47pbbs', 1, e'        Fixed width measurement regression.  We lost the final ROUND_TO_INT
        in the width measurement funtion after the move from WebCore.


git-svn-id: svn://svn.chromium.org/blink/trunk@1100 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-05-06 22:56:55.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0ea55af897eef824e357aa9ef1fb2c696d86ace4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000ri01s2dy26s80d', 1, e'        Changes to support dhmtl.
        Changes to support targeting (regression after 3.0 merge).


git-svn-id: svn://svn.chromium.org/blink/trunk@1099 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-05-06 20:49:09.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9911729b3bb27b5d41f204bfb04d3b80cdb1da05');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rj01s2mdobtg94', 1, e'	* Resources/url_icon.tiff: New bookmarks/history icon, looks
	more like the springy @ sign as seen from above, less like text.


git-svn-id: svn://svn.chromium.org/blink/trunk@1098 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-06 16:31:08.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/5ad3d31934abce1d9fa0f9b17b14761dd74f922a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rk01s2usgbp73h', 1, e'	* khtml/css/cssstyleselector.cpp:
	* khtml/dom/css_value.cpp:
	* khtml/xml/dom_stringimpl.cpp:
	Put in some namespace-related statements to more-elegantly work around the
	conflicts between Macintosh and khtml identifiers.


git-svn-id: svn://svn.chromium.org/blink/trunk@1097 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-04 00:27:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3062f59c41e7a357b4726195048326485f254dc4');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rl01s2bs8bzqh2', 1, e'	Along with small corresponding WebBrowser change,
	fixed 2919172 (Bookmarks aren\'t saved between sessions).

	* Bookmarks.subproj/IFBookmark_Private.h: Declarations for new private methods.
	* Bookmarks.subproj/IFBookmark.m:
	(-[IFBookmark _numberOfDescendants]): New private method, counts deep; used
	only for debugging messages at this time.
	(-[IFBookmark _initFromDictionaryRepresentation:withGroup:]):
	(-[IFBookmark _dictionaryRepresentation]): New private methods used to save/load
	bookmarks. Stub	implementations; subclasses must implement.

	* Bookmarks.subproj/IFBookmarkLeaf.m:
	(-[IFBookmarkLeaf _initFromDictionaryRepresentation:withGroup:]):
	(-[IFBookmarkLeaf _dictionaryRepresentation]): New methods.

	* Bookmarks.subproj/IFBookmarkList.m:
	(-[IFBookmarkList _initFromDictionaryRepresentation:withGroup:]):
	(-[IFBookmarkList _dictionaryRepresentation]):
	(-[IFBookmarkList _numberOfDescendants]):
	New methods.
	(-[IFBookmarkList _setGroup:]): Recurse on children.

	* Bookmarks.subproj/IFBookmarkGroup.h: New _loading instance variable.

	* Bookmarks.subproj/IFBookmarkGroup.m:
	(-[IFBookmarkGroup _setTopBookmark:]): Renamed from _resetTopBookmark,
	now has potentially non-nil argument.
	(-[IFBookmarkGroup initWithFile:]),
	(-[IFBookmarkGroup removeBookmark:]): Updated for name change.
	(-[IFBookmarkGroup _sendBookmarkGroupChangedNotification]):
	Don\'t send notifications while loading bookmarks from disk.
	(-[IFBookmarkGroup _loadBookmarkGroupGuts]),
	(-[IFBookmarkGroup loadBookmarkGroup]),
	(-[IFBookmarkGroup _saveBookmarkGroupGuts]),
	(-[IFBookmarkGroup saveBookmarkGroup]): New methods, load/save bookmarks
	and report timings.

	* History.subproj/IFURIEntry.m:
	(-[IFURIEntry dictionaryRepresentation]),
	(-[IFURIEntry initFromDictionaryRepresentation:]): Handle nil URL
	case, which bookmarks run into.

	* WebKit.pbproj/project.pbxproj: version wars

	* AppController.m:
	(-[AppController applicationWillTerminate:]):
	Save bookmarks at quit time.

	* WebBrowser.pbproj/project.pbxproj: version wars


git-svn-id: svn://svn.chromium.org/blink/trunk@1096 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-03 23:05:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7b18afbe204d836a3851b73b210dfe26f56d10de');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rm01s2o76gsiy2', 1, e'	* WebCoreSupport.subproj/IFCachedTextRenderer.m: Remove some of the unused code.
	I was going to wait and let Richard do it next week, but I was unable to control
	my urge to hack on it.


git-svn-id: svn://svn.chromium.org/blink/trunk@1095 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-03 21:52:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/e082ef10bf5e9fd3dd084614961ba0250e7e4f7c');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rn01s2dsadv19m', 1, e'	* Resources/url_icon.tiff: Improved icon. Could be better.


git-svn-id: svn://svn.chromium.org/blink/trunk@1094 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-03 19:03:32.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ddf18119002afbf4bc6aa8f8eebb8d5521576965');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000ro01s2gwdkca9n', 1, e'Revert icon, oops.


git-svn-id: svn://svn.chromium.org/blink/trunk@1093 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-03 18:42:27.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/4b9c6d82ba7a3f5ad391d5d5472a956e5848c1f1');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000ru01s28lg6xzay', 1, e'	Fixed silly bug Darin noticed by inspection where I was
	doing string == @"" instead of [string length] == 0.

	* BrowserWindow.m:
	(-[BrowserWindow setStatus:]):

	Added initial set of files/API and some of the code for
	bookmarks support. Nobody calls it yet, but it compiles.
	I wanted to get this in before I ran into project file
	merge conflicts.

	* Bookmarks.subproj/IFBookmark.h: Added.
	* Bookmarks.subproj/IFBookmark_Private.h: Added.
	* Bookmarks.subproj/IFBookmark.m: Added.
	(-[IFBookmark dealloc]):
	(-[IFBookmark title]):
	(-[IFBookmark _setTitle:]):
	(-[IFBookmark image]):
	(-[IFBookmark _setImage:]):
	(-[IFBookmark isLeaf]):
	(-[IFBookmark URLString]):
	(-[IFBookmark _setURLString:]):
	(-[IFBookmark children]):
	(-[IFBookmark _insertChild:atIndex:]):
	(-[IFBookmark parent]):
	(-[IFBookmark _setParent:]):
	(-[IFBookmark group]):
	(-[IFBookmark _setGroup:]):
	* Bookmarks.subproj/IFBookmarkGroup.h: Added.
	* Bookmarks.subproj/IFBookmarkGroup.m: Added.
	(+[IFBookmarkGroup bookmarkGroupWithFile:]):
	(-[IFBookmarkGroup initWithFile:]):
	(-[IFBookmarkGroup dealloc]):
	(-[IFBookmarkGroup topBookmark]):
	(-[IFBookmarkGroup insertBookmark:atIndex:ofBookmark:]):
	(-[IFBookmarkGroup removeBookmark:]):
	(-[IFBookmarkGroup insertNewBookmarkAtIndex:ofBookmark:title:image:URL:isLeaf:]):
	(-[IFBookmarkGroup updateBookmark:title:image:URL:]):
	(-[IFBookmarkGroup file]):
	(-[IFBookmarkGroup loadBookmarkGroup]):
	(-[IFBookmarkGroup saveBookmarkGroup]):
	* Bookmarks.subproj/IFBookmarkLeaf.h: Added.
	* Bookmarks.subproj/IFBookmarkLeaf.m: Added.
	(-[IFBookmarkLeaf dealloc]):
	(-[IFBookmarkLeaf title]):
	(-[IFBookmarkLeaf _setTitle:]):
	(-[IFBookmarkLeaf image]):
	(-[IFBookmarkLeaf _setImage:]):
	(-[IFBookmarkLeaf isLeaf]):
	(-[IFBookmarkLeaf URLString]):
	(-[IFBookmarkLeaf _setURLString:]):
	* Bookmarks.subproj/IFBookmarkList.h: Added.
	* Bookmarks.subproj/IFBookmarkList.m: Added.
	(-[IFBookmarkList initWithTitle:image:group:]):
	(-[IFBookmarkList dealloc]):
	(-[IFBookmarkList title]):
	(-[IFBookmarkList _setTitle:]):
	(-[IFBookmarkList image]):
	(-[IFBookmarkList _setImage:]):
	(-[IFBookmarkList isLeaf]):
	(-[IFBookmarkList children]):
	(-[IFBookmarkList _insertChild:atIndex:]):

	* WebKit.pbproj/project.pbxproj: Updated for new files.


git-svn-id: svn://svn.chromium.org/blink/trunk@1087 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-04-30 23:50:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/56a01e68a16043f32a1de6d967f7e1ab74eb2aa7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rp01s25vqf54xb', 1, e'WebCore:

	* kwq/IFTextRenderer.h: Added.
	* kwq/IFTextRendererFactory.h: Added.
	* kwq/IFTextRendererFactory.m: Added.
	These three are the new API for supplying text rendering machinery for WebCore.
	The implementation is in WebKit. Later we might want to flesh out the default
	implementation in WebCore so that it works OK by itself.

	* khtml/rendering/font.cpp: (Font::width): Function is now "width" without
	an underscore. We don\'t really need to hide the overload we added in this
	case.

	* kwq/qt/qfont.h: Simplify a lot. Doesn\'t hold an NSFont any more.
	* kwq/KWQFont.mm:
	(QFont::QFont): Eliminated the concept of "default font". Also, a QFont no
	longer holds an NSFont object. That\'s handled inside IFTextRenderer machinery.
	(QFont::~QFont): Simplify since we don\'t have an NSFont.
	(QFont::setFamily): Simplify since we don\'t have an NSFont.
	(QFont::setPixelSize): Simplify since we don\'t have an NSFont.
	(QFont::setPixelSizeFloat): Simplify since we don\'t have an NSFont.
	(QFont::setWeight): Simplify since we don\'t have an NSFont.
	(QFont::weight): Fix a bug where it would return Normal for a QFont that was
	both bold and italic.
	(QFont::setItalic): Simplify since we don\'t have an NSFont.
	(QFont::italic): Simplify since we have real "bool".
	(QFont::bold): Simplify since we have real "bool".
	(QFont::operator=): Simplify since we don\'t have an NSFont.
	(QFont::operator==): Rewrite since we don\'t have an NSFont.

	* kwq/qt/qfontmetrics.h: Simplify a little. The _width() method is now just an
	overload of the width() method. The main change was removing the include of Cocoa.h.
	* kwq/KWQFontMetrics.mm:
	Move most of the code out of here into WebKit.
	(QFontMetrics::ascent): Get it from the renderer.
	(QFontMetrics::descent): Get it from the renderer.
	(QFontMetrics::lineSpacing): Get it from the renderer.
	(QFontMetrics::width): Get it from the renderer.
	(QFontMetrics::boundingRect): Combine width and height that came from the renderer.
	(QFontMetrics::size): Combine width and height that came from the renderer.

	* kwq/Makefile.am: Add IFTextRendererFactory.m, remove KWQTextStorage.mm and KWQTextContainer.mm.
	* kwq/KWQMetrics.h: Removed.
	* kwq/KWQTextContainer.h: Removed.
	* kwq/KWQTextContainer.mm: Removed.
	* kwq/KWQTextStorage.h: Removed.
	* kwq/KWQTextStorage.mm: Removed.

	* kwq/KWQPainter.mm:
	Move most of the code out of here into WebKit.
	(QPainter::drawText): Call the renderer to do it.
	(QPainter::drawUnderlineForText): Call the renderer to do it.

	* libwebcore.exp: Export the IFTextRendererFactory class.

WebKit:

	* Misc.subproj/WebKitDebug.h: Add WEBKIT_LOG_MEMUSAGE, WEBKIT_LOG_FONTCACHE, and
	WEBKIT_LOG_FONTCACHECHARMISS for font code moved here from WebCore.

	* Resources/url_icon.tiff: New URL icon?

	* WebCoreSupport.subproj/IFCachedTextRenderer.h: Added.
	* WebCoreSupport.subproj/IFCachedTextRenderer.m: Added.
	* WebCoreSupport.subproj/IFCachedTextRendererFactory.h: Added.
	* WebCoreSupport.subproj/IFCachedTextRendererFactory.m: Added.
	This has code moved here from WebCore.

	* WebKit.pbproj/project.pbxproj: Add the new source files.

	* Bookmarks.subproj/IFBookmarkLeaf.m:
	(-[IFBookmarkLeaf setURLString:]): Use copy instead of initWithString.
	* Bookmarks.subproj/IFBookmarkList.m:
	(-[IFBookmarkList initWithTitle:image:group:]): Use copy instead of stringWithString.
	(-[IFBookmarkList setTitle:]): Use copy instead of stringWithString.
	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _setTitle:]):
	Use mutableCopy instead of stringWithString.
	* WebView.subproj/IFWebView.mm: (-[IFWebView initWithFrame:]): Use copy instead
	of stringWithString.


git-svn-id: svn://svn.chromium.org/blink/trunk@1092 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-03 18:36:23.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/02b7a4e56e950b355e575a3878c5cf26d2fffd0e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rq01s2rnn8kmjv', 1, e'	* AuthenticationManager.subproj/IFAuthenticationRequest.m:
	(-[IFAuthenticationRequest initWithURL:realm:username:passwordSentInClear:previousFailures:callback:]):
	* AuthenticationManager.subproj/IFAuthenticationResult.m:
	(-[IFAuthenticationResult initWithUsername:password:]):
	* Database.subproj/IFDatabase.m:
	(-[IFDatabase initWithPath:]):
	Simplify code by using [copy] instead of [NSString initWithString:].


git-svn-id: svn://svn.chromium.org/blink/trunk@1091 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-03 18:07:05.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1a38b27c2fd31b6903bd193b5a8004c77ffa7701');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rr01s244q1zm1s', 1, e'	* Bookmarks.subproj/IFBookmark.h:
	* Bookmarks.subproj/IFBookmark.m:
	(-[IFBookmark setTitle:]):
	(-[IFBookmark setImage:]):
	(-[IFBookmark setURLString:]):
	(-[IFBookmark insertChild:atIndex:]):
	(-[IFBookmark removeChild:]):
	(-[IFBookmark _parent]):
	(-[IFBookmark _group]):
	* Bookmarks.subproj/IFBookmarkGroup.h:
	* Bookmarks.subproj/IFBookmarkGroup.m:
	(-[IFBookmarkGroup _resetTopBookmark]):
	(-[IFBookmarkGroup _bookmarkDidChange:]):
	(-[IFBookmarkGroup _bookmarkChildrenDidChange:]):
	(-[IFBookmarkGroup removeBookmark:]):
	(-[IFBookmarkGroup insertNewBookmarkAtIndex:ofBookmark:withTitle:image:URLString:isLeaf:]):
	* Bookmarks.subproj/IFBookmarkLeaf.m:
	(-[IFBookmarkLeaf setTitle:]):
	(-[IFBookmarkLeaf setImage:]):
	(-[IFBookmarkLeaf setURLString:]):
	* Bookmarks.subproj/IFBookmarkList.m:
	(-[IFBookmarkList setTitle:]):
	(-[IFBookmarkList setImage:]):
	(-[IFBookmarkList removeChild:]):
	(-[IFBookmarkList insertChild:atIndex:]):
	* Bookmarks.subproj/IFBookmark_Private.h:
	Made _parent and _group private; made setTitle, setImage, setURLString,
	insertChild:atIndex:, and removeChild: public.

	* Bookmarks.subproj/IFBookmarkGroup_Private.h: Added.
	* WebKit.pbproj/project.pbxproj: Changed for new file.


git-svn-id: svn://svn.chromium.org/blink/trunk@1090 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-02 23:57:40.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/adf4811a7c799771241c18b3d1c812d6eaf22b13');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rs01s2cw84lk8v', 1, e'	Implemented removing the root node bookmark (i.e.,
	removing all bookmarks with one call).

	* Bookmarks.subproj/IFBookmarkGroup.m:
	(-[IFBookmarkGroup _resetTopBookmark]): New method, releases
	old topBookmark and creates new one.
	(-[IFBookmarkGroup initWithFile:]): Call _resetTopBookmark.
	(-[IFBookmarkGroup removeBookmark:]): If the bookmark being
	removed is the top one, call _resetTopBookmark.

	Added "Erase All Bookmarks" menu item to Debug menu, which will be
	handy in the interim between making bookmarks persistent and making
	them organizable (they are neither yet).

	Along the way, made DebugUtilities be a shared instance instead of
	a collection of class methods, to make some innards easier to
	implement.

	* Debug/DebugUtilities.h: new class method sharedDebugUtilities;
	changed other class methods to instance methods; made _debugMenu
	an instance variable.

	* Debug/DebugUtilities.m:
	(-[DebugUtilities dealloc]): release _debugMenu.
	(+[DebugUtilities sharedDebugUtilities]): New method.
	(-[DebugUtilities addDebugBookmarkToMenu:forURL:keyEquivalent:]):
	(-[DebugUtilities pathForDebugBookmarks]):
	(-[DebugUtilities loadDebugBookmarks]):
	(-[DebugUtilities conditionallyDisplayPageLoadTestWindow]):
	Changed class methods to instance methods. Also updated private
	AppController method name that had changed, causing the debug
	bookmarks to become disabled with my last checkin.
	(-[DebugUtilities eraseAllBookmarks:]): New method.
	(-[DebugUtilities createDebugMenu]): Add "Erase All Bookmarks"
	menu item, with -eraseAllBookmarks as callback.

	* AppController.m:
	(-[AppController awakeFromNib]): use sharedDebugUtilities where a
	class method used to work.


git-svn-id: svn://svn.chromium.org/blink/trunk@1089 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-02 22:31:10.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/a61be3258e714ca94db97afe85911db7ce22ebee');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rt01s2p5dakgz3', 1, e'	Some more implementation of bookmarks code, enough to support
	adding bookmarks to the Bookmarks menu (but not yet enough to
	support persistent bookmarks).

	* Bookmarks.subproj/IFBookmark_Private.h:
	* Bookmarks.subproj/IFBookmark.h:
	* Bookmarks.subproj/IFBookmark.m:
	(-[IFBookmark numberOfChildren]): New public method, stub implementation.
	(-[IFBookmark _removeChild:]): New private method, stub implementation.

	* Bookmarks.subproj/IFBookmarkGroup.h:
	* Bookmarks.subproj/IFBookmarkGroup.m:
	(-[IFBookmarkGroup _sendBookmarkGroupChangedNotification]):
	(-[IFBookmarkGroup removeBookmark:]):
	(-[IFBookmarkGroup addNewBookmarkToBookmark:withTitle:image:URLString:isLeaf:]):
	(-[IFBookmarkGroup insertNewBookmarkAtIndex:ofBookmark:withTitle:image:URLString:isLeaf:]):
	(-[IFBookmarkGroup updateBookmark:title:image:URLString:]):
	Changed "URL" to "URLString" in several places, added a "with"
	to some parameter names; added addNewBookmarkToBookmark public
	method; added notification that\'s sent when bookmarks are added or removed.

	* Bookmarks.subproj/IFBookmarkLeaf.h:
	* Bookmarks.subproj/IFBookmarkLeaf.m:
	(-[IFBookmarkLeaf initWithURLString:title:image:group:]):
	Added image parameter.

	* Bookmarks.subproj/IFBookmarkList.m:
	(-[IFBookmarkList numberOfChildren]): New method.
	(-[IFBookmarkList _removeChild:]): Implemented.

	Fixed 2917086 (Add Bookmark is not yet implemented). You
	can now add bookmarks to the Bookmarks menu, and they work.
	However, they aren\'t yet persistent, and there\'s only a flat
	list that you can\'t yet reorder.

	* AppController.h: Added instance variables for bookmarks stuff;
	added +standardBookmarks method.

	* AppController.m:
	(-[AppController awakeFromNib]): Move history notification setup from
	here to -webHistory; added call to _updateBookmarksInMenu, and FIXME
	about doing this lazily eventually.
	(-[AppController dealloc]): release bookmarks.
	(-[AppController webHistory]): Moved history notification setup to here.
	(-[AppController menuTitleForURL:withTitle:]): Improved assert.

	(-[AppController _setUpStringTruncator]):
	(-[AppController _historyFilePath]):
	(-[AppController _receivedHistoryChangedNotification:]):
	(-[AppController _insertHistoryEntry:intoMenu:atIndex:]):
	(-[AppController _insertItemsForDate:intoMenu:atIndex:withRunningTotal:limit:]):
	(-[AppController _insertSubmenu:forDate:atIndex:]):
	(-[AppController _takeLocationFromHistoryEntry:]):
	(-[AppController _addHistoryToMenu]):
	(-[AppController _updateHistoryInMenu]):
	Added leading underscores to private methods, updated callers.

	(-[AppController _standardBookmarksFilePath]):
	(-[AppController _removeBookmarksFromMenu]):
	(-[AppController _takeLocationFromBookmark:]):
	(-[AppController _insertBookmark:intoMenu:atIndex:]):
	(-[AppController _addBookmarksToMenu]):
	(-[AppController _updateBookmarksInMenu]):
	(-[AppController _receivedBookmarksChangedNotification:]):
	(-[AppController standardBookmarks]): New methods.

	* BrowserDocument.h:
	* BrowserDocument.m:
	(-[BrowserDocument addBookmark:]): New method; accessed from menu item.
	(-[BrowserDocument validateUserInterfaceItem:]): Enable Add Bookmark
	menu item only when there\'s a currentURL.

	* English.lproj/MainMenu.nib: Wire up some bookmark-related stuff.

	* WebBrowser.pbproj/project.pbxproj: Version wars?


git-svn-id: svn://svn.chromium.org/blink/trunk@1088 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sullivan', '2002-05-02 19:53:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/94e9d9a07ed58ac3785fb3801199f73a42602aa2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rx01s2gjat5si5', 1, e'	* kwq/make-mac-encodings.c: (main): One more place that needed a workaround
	for Radar 2912404 (kCFStringEncodingInvalidId is negative even though
	CFStringEncoding is unsigned).

	* kwq/KWQTextArea.mm: (-[KWQTextArea paragraphs]): Do this
	ourselves so we don\'t rely on WebFoundation.
	* kwq/Makefile.am: Don\'t do a -I for WebFoundation.


git-svn-id: svn://svn.chromium.org/blink/trunk@1083 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-26 19:23:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/80d63a20238a62344c1e5a4ecff94173b57e590b');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000ry01s277apmb1n', 1, e'Check in some old changes from my TiBook so I can trash the source tree.

	Pay no attention to the man who is not supposed to be working.

	* Tools/Scripts/find-unused-symbols: Added. Only partly done.
	* configure.in: Some small tweaks.

WebCore:

	Pay no attention to the man who is not supposed to be working.

	* khtml/Makefile.am:
	* khtml/css/Makefile.am:
	* khtml/ecma/Makefile.am:
	* khtml/html/Makefile.am:
	* khtml/java/Makefile.am:
	* khtml/misc/Makefile.am:
	* khtml/rendering/Makefile.am:
	* khtml/xml/Makefile.am:
	Don\'t generate empty .moc files or khtmldata.h; there\'s no reason
	not to just check them in instead. Also tweak a few build rules to
	use automatic make variables.

	* khtml/ecma/kjs_window.moc: Added.
	* khtml/html/html_documentimpl.moc: Added.
	* khtml/html/htmltokenizer.moc: Added.
	* khtml/java/kjavaapplet.moc: Added.
	* khtml/java/kjavaappletcontext.moc: Added.
	* khtml/java/kjavaappletserver.moc: Added.
	* khtml/java/kjavaappletwidget.moc: Added.
	* khtml/java/kjavadownloader.moc: Added.
	* khtml/java/kjavaprocess.moc: Added.
	* khtml/khtmlview.moc: Added.
	* khtml/misc/khtmldata.h: Added.
	* khtml/rendering/render_form.moc: Added.
	* khtml/rendering/render_frames.moc: Added.
	* khtml/rendering/render_replaced.moc: Added.
	* khtml/xml/dom_docimpl.moc: Added.
	* khtml/xml/xml_tokenizer.moc: Added.

	* kwq/kwqdebug.mm: Make some globals private.


git-svn-id: svn://svn.chromium.org/blink/trunk@1082 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-26 17:11:47.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/7585f9d39e280c5a85612f443ed719263008e82d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000rz01s2xislkxxp', 1, e'WebFoundation:
	Reviewed by: Darin Adler

	Changes to authentication to allow the IFAuthenticationHandler
	protocol to be asynchronous, so it\'s cancellable and suitable for
	use by sheets. Fixes the following Radar bugs:

	2874727 - IFAuthenticationHandler protocol is unsuitable for
	clients that want to prompt using a sheet
	2874730 - IFAuthenticationHandler protocol does not allow for cancellation
	2876170 - Authentication handling blocks a loader thread indefinitely

	In addition there is a lot of assorted code cleanup.

	* AuthenticationManager.subproj/IFAuthenticationHandler.h:
	* AuthenticationManager.subproj/IFAuthenticationHandlerDispatcher.h:
	* AuthenticationManager.subproj/IFAuthenticationHandlerDispatcher.m:
	(-[IFAuthenticationDispatchState dealloc]):
	(dispatchStartAuthentication):
	(dispatchCancelAuthentication):
	(dispatchAuthenticationDone):
	(dispatchAuthenticationHandlerBusy):
	(-[IFAuthenticationHandlerDispatcher _dispatchStartAuthentication:]):
	(-[IFAuthenticationHandlerDispatcher IFAuthenticationRequest:authenticationDone:]):
	(-[IFAuthenticationHandlerDispatcher IFAuthenticationRequestAuthenticationHandlerBusy:]):
	(-[IFAuthenticationHandlerDispatcher _dispatchCancelAuthentication:]):
	(-[IFAuthenticationHandlerDispatcher _dispatchAuthenticationDone:]):
	(-[IFAuthenticationHandlerDispatcher _dispatchAuthenticationHandlerBusy:]):
	(-[IFAuthenticationHandlerDispatcher initWithAuthenticationHandler:]):
	(-[IFAuthenticationHandlerDispatcher dealloc]):
	(-[IFAuthenticationHandlerDispatcher hasHandler:]):
	(-[IFAuthenticationHandlerDispatcher startAuthentication:]):
	(-[IFAuthenticationHandlerDispatcher cancelAuthentication:]):
	* AuthenticationManager.subproj/IFAuthenticationManager.m:
	(-[IFAuthenticationRequestState initWithHandlersCopy:index:httpRequest:authenticationRequest:callback:context:]):
	(-[IFAuthenticationRequestState dealloc]):
	(-[IFAuthenticationManagerPrivate init]):
	(-[IFAuthenticationManagerPrivate dealloc]):
	(-[IFAuthenticationManager _invokeHandlersWithURL:realm:forRequest:withCallback:context:]):
	(-[IFAuthenticationManager _tryRequest:]):
	(-[IFAuthenticationManager IFAuthenticationRequest:authenticationDone:]):
	(-[IFAuthenticationManager _addCredentialsToInitialHTTPRequest:]):
	(-[IFAuthenticationManager _addCredentialsToRetryHTTPRequest:afterFailureResponse:withCallback:context:]):
	(-[IFAuthenticationManager _cancelAddCredentialsToRetryHTTPRequest:]):
	* AuthenticationManager.subproj/IFAuthenticationManagerCallback.h:
	* AuthenticationManager.subproj/IFAuthenticationRequest.m:
	(-[IFAuthenticationRequest _authenticationHandlerBusy]):
	(-[IFAuthenticationRequest authenticationDone:]):
	* AuthenticationManager.subproj/IFAuthenticationRequestPrivate.h:
        * WebFoundation.pbproj/project.pbxproj: Added new files to the build.

	* Misc.subproj/IFCFRunLoopExtensions.h, Misc.subproj/IFCFRunLoopExtensions.c: 	Added.
	(IFCallFromCFRunLoop): New convenience wrapper for a one-shot run loop
        callback.
	(IFCallFromRunLoopCFRunLoopTimerCallBack): Helper function for the above.
	(IFCallFromCFRunLoopContextRetain): Likewise.
	(IFCallFromCFRunLoopContextRelease): Likewise.
	(IFCallFromCFRunLoopContextCopyDescription): Likewise.

	* Misc.subproj/IFNSDictionaryExtensions.h,Misc.subproj/IFNSDictionaryExtensions.m:
	(-[NSMutableDictionary _IF_setObject:forUncopiedKey:]): New helper function to put
        things in dictionaries without copying the key.

WebBrowser:
	* AuthenticationHandler.h, AuthenticationHandler.m: Changed to
	conform to new improved IFAuthenticationHandler protocol.

	(-[AuthenticationHandler init]):
	(-[AuthenticationHandler readyToStartAuthentication:]):
	(-[AuthenticationHandler startAuthentication:]):
	(-[AuthenticationHandler cancelAuthentication:]):
	(-[AuthenticationHandler showAuthenticationPanel]):

	* WebBrowser.pbproj/project.pbxproj: I touched it.


git-svn-id: svn://svn.chromium.org/blink/trunk@1081 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'mjs', '2002-04-26 06:37:02.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/1bb9e436826e9d500e8aefd04bb4ab1bcae61dce');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000s001s23ugk2r2w', 1, e'	* History.subproj/IFWebHistoryPrivate.m:
	(-[IFWebHistoryPrivate _loadHistoryGuts:]): Use NSDictionary instead
	of NSObject to avoid a cast.

	* WebView.subproj/IFLocationChangeHandler.h: Add NSObject as a required
	protocol so we can retain and release.
	* WebView.subproj/IFWebController.h: Add NSObject as a required protocol
	so we can retain and release.

	* WebView.subproj/IFWebDataSourcePrivate.mm:
	(-[IFWebDataSourcePrivate dealloc]):
	(-[IFWebDataSource _setLoading:]):
	(-[IFWebDataSource _setController:]):
	(-[IFWebDataSource _setLocationChangeHandler:]):
	* WebView.subproj/IFWebViewPrivate.mm:
	(-[IFWebViewPrivate dealloc]):
	Removed NSObject * casts that were used to work around the problem fixed above.


git-svn-id: svn://svn.chromium.org/blink/trunk@1080 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-26 01:55:57.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/04e026dae1d244a208833ea521a1e9875261837e');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000s101s2qgzutqi9', 1, e'	* kwq/KWQMetrics.h: Add NSObject to required protocols for
	the KWQLayoutFragment protocol so we can retain and release.

	* kwq/KWQTextStorage.mm: (-[KWQTextStorage _buildFragmentForString:]):
	Removed a cast to NSObject * that worked around the lack of the above.


git-svn-id: svn://svn.chromium.org/blink/trunk@1079 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-04-26 01:54:19.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/ff28fdcee46ed28cd8848cc5627636ac447991ef');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswb7000s201s2tmviou0x', 1, e'        * MIME.subproj/IFDownloadHandler.h:
        * MIME.subproj/IFDownloadHandler.mm:
        (+[IFDownloadHandler launchURL:]):

        Added the above method as a way to universally launch an URL
        within WebKit

        * WebView.subproj/IFBaseWebController.mm:
        (-[IFBaseWebController URLPolicyForURL:]):

        We handle http, https and file URL\'s

        * WebView.subproj/IFWebDataSource.mm:
        (-[IFWebDataSource initWithURL:]):
        (-[IFWebDataSource startLoading:]):

        The IFURLHandle is now lazilly allocated.

        * WebView.subproj/IFWebFrame.mm:
        (-[IFWebFrame setProvisionalDataSource:]):

        We only load a data source if the URL policy is IFURLPolicyUseContentPolicy


git-svn-id: svn://svn.chromium.org/blink/trunk@1078 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-04-26 00:30:56.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/caa04e07372c8bf0514e9c1291ae54c253e7484f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sm01s238jyfvgm', 1, e'2002-05-09  Kenneth Kocienda  <kocienda@apple.com>

        Reviewed by: Chris Blumenberg

        Fix for this bug:

        Radar 2922673 (Remove use of private NSData interface in IFURLFileDatabase.m)

        * Database.subproj/IFURLFileDatabase.m:
        (-[IFURLFileReader initWithPath:]): Code now uses new Jaguar public API


git-svn-id: svn://svn.chromium.org/blink/trunk@1120 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-05-09 19:42:45.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/9a0612a76f9e9e999c23e72bbd4b587b4ae3dc7d');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sn01s2yoggfcg8', 1, e'2002-05-09  Kenneth Kocienda  <kocienda@apple.com>

        Fix for this bug:

        Radar 2890624 (need to remove workaround for double free of image data from QPixmap)

        The appropriate, bug-free AppKit code is now available to us on Jaguar.
        Rolling out the workaround.

        * kwq/KWQPixmap.mm:
        (QPixmap::QPixmap)


git-svn-id: svn://svn.chromium.org/blink/trunk@1119 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-05-09 19:25:01.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/fd86e205773802ce38bad572cdb8b9200d5e5d75');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00so01s2i143w8ix', 1, e'2002-05-09  Kenneth Kocienda  <kocienda@apple.com>

        Tiny little string copying cleanup suggested by Darin.

        * Database.subproj/IFURLFileDatabase.m:
        (-[IFURLFileDatabase open]): small string copying cleanup.


git-svn-id: svn://svn.chromium.org/blink/trunk@1118 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-05-09 16:43:22.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/864caf131a75f771e257ae23c2f9276c8ce7029f');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sp01s2sgrrfawg', 1, e'2002-05-09  Kenneth Kocienda  <kocienda@apple.com>

        Reviewed by: Darin Adler

        Fixes for these two bugs:

        Radar 2859001 (Maintain usage calculation for on-disk cache)
        Radar 2859009 (On-disk cache must be able to be truncated to a specific size)

        Now, the on-disk database keeps track of the amount of data it stores and can enforce
        a usage quota. This new system should work quite well as long as there is a one-to-one
        mapping between processes and on-disk cache paths.

        Further guarantees for synchronous access to a cache from multiple processes will be
        offered if (when) we switch over to using the sleepycat Berkeley DB for the disk cache
        implementation.

        * CacheLoader.subproj/IFURLDiskCache.m:
        (-[IFURLDiskCache initWithSizeLimit:path:]): Added code that calls into new database methods
        (-[IFURLDiskCache dealloc]): Added missing call to [super dealloc]
        (-[IFURLDiskCache setSizeLimit:]): New
        (-[IFURLDiskCache usage]): New
        * Database.subproj/IFDatabase.h:
        * Database.subproj/IFDatabase.m:
        (-[IFDatabase initWithPath:]): Added code to track size limit and usage
        (-[IFDatabase isOpen]): Added code to track size limit and usage
        (-[IFDatabase count]): New
        (-[IFDatabase sizeLimit]): New
        (-[IFDatabase setSizeLimit:]): New
        (-[IFDatabase usage]): New
        * Database.subproj/IFNDBMDatabase.h: Removed.
        * Database.subproj/IFNDBMDatabase.m: Removed.
        * Database.subproj/IFURLFileDatabase.h:
        * Database.subproj/IFURLFileDatabase.m:
        (+[IFURLFileDatabase uniqueFilePathForKey:]): Moved to private category
        (-[IFURLFileDatabase writeSizeFile:]): New
        (-[IFURLFileDatabase readSizeFile]): New
        (-[IFURLFileDatabase truncateToSizeLimit:]): New
        (-[IFURLFileDatabase initWithPath:]): Added code to deal with size reckoning
        (-[IFURLFileDatabase removeAllObjects]): Added code to deal with size reckoning
        (-[IFURLFileDatabase performSetObject:forKey:]): Added code to deal with size reckoning
        (-[IFURLFileDatabase performRemoveObjectForKey:]): Added code to deal with size reckoning
        (-[IFURLFileDatabase open]): Added code to deal with size reckoning
        (-[IFURLFileDatabase close]): Added code to deal with size reckoning
        (-[IFURLFileDatabase sync]): Added code to deal with size reckoning
        (-[IFURLFileDatabase count]): New
        (-[IFURLFileDatabase setSizeLimit:]): New
        * WebFoundation.pbproj/project.pbxproj: PB has its way again.


git-svn-id: svn://svn.chromium.org/blink/trunk@1117 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'kocienda', '2002-05-09 16:35:30.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/0e48c61951cd678d140b1be23c4637fbfd7d7338');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sq01s2d487ybgs', 1, e'Alexander-3 versioning


git-svn-id: svn://svn.chromium.org/blink/trunk@1115 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'sheridan', '2002-05-09 16:19:20.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/689346f402a0fd069a5fa28f00dbf3c81bdf606a');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sr01s20opjl28r', 1, e'    Added optimizations for text rendering.


git-svn-id: svn://svn.chromium.org/blink/trunk@1114 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'rjw', '2002-05-09 03:05:18.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/31abd75603d0db1692114604e61ac607547bd1cd');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00ss01s2wuhgtihz', 1, e'	* Misc.subproj/IFCache.h: Add more JavaScript object statistics.
	* Misc.subproj/IFCache.mm:
	(+[IFCache javaScriptInterpretersCount]): New.
	(+[IFCache javaScriptNoGCAllowedObjectsCount]): New.
	(+[IFCache javaScriptReferencedObjectsCount]): New.

	* WebKit.pbproj/project.pbxproj: Rearranged two files, dunno why.


git-svn-id: svn://svn.chromium.org/blink/trunk@1113 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-09 00:11:33.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/561ea087f2ff509b5999f6961b55a63ec9c8cae2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00st01s2sarrhdzr', 1, e'	* kjs/collector.h:
	* kjs/collector.cpp:
	(Collector::numInterpreters):
	(Collector::numGCNotAllowedObjects):
	(Collector::numReferencedObjects):
	Add three new functions so we can see a bit more about leaking JavaScriptCore.


git-svn-id: svn://svn.chromium.org/blink/trunk@1112 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-09 00:11:06.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/3058aaec903999c1320b9310d18f1711b908bdc6');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00su01s2awl959pm', 1, e'        Cleaned up mach-o plug-in support.

        Changed the init method in IFPlugin to initWithPath.

        * Plugins.subproj/IFPlugin.h:
        * Plugins.subproj/IFPlugin.m:
        (-[IFPlugin initWithPath:]):
        (-[IFPlugin load]):
        * Plugins.subproj/IFPluginDatabase.m:
        (findPlugins):


git-svn-id: svn://svn.chromium.org/blink/trunk@1111 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'cblu', '2002-05-08 20:22:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/2154fe65f7ec3fd97a717d639fab9c94f6a6a2a2');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sv01s2os11z90l', 1, e'Forgot include.


git-svn-id: svn://svn.chromium.org/blink/trunk@1110 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-08 18:37:00.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/51727c010c20c5ae440ebe87ac9db90e0fafb3a7');
INSERT INTO public.commits (id, repo_id, message, author, date, url) VALUES ('cmbjswdsp00sw01s2ptv821xu', 1, e'	* WebView.subproj/IFWebDataSourcePrivate.mm: (-[IFWebDataSource _setTitle:]):
	Use _IF_stringByTrimmingWhitespace.


git-svn-id: svn://svn.chromium.org/blink/trunk@1109 bbb929c8-8fbe-4397-9dbb-9b2b20218538', 'darin', '2002-05-08 18:29:59.000000 +00:00', 'https://api.github.com/repos/chromium/chromium/git/commits/933c288e92a2ead8c7eee5ad1310c53ba3b6e7bb');

SELECT SETVAL('public.repositories_id_seq', (SELECT MAX(id) FROM repositories));
