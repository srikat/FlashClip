// @ts-check

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'FlashClip',
  tagline: 'Clipboard, built for flow.',
  favicon: 'img/logo.png',

  url: 'https://srikat.github.io',
  baseUrl: '/FlashClip/',

  organizationName: 'srikat',
  projectName: 'FlashClip',
  deploymentBranch: 'gh-pages',

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: false,
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        title: 'FlashClip',
        logo: {
          alt: 'FlashClip Logo',
          src: 'img/logo.png',
        },
        items: [
          {
            href: 'https://github.com/srikat/FlashClip',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        copyright: `Copyright © ${new Date().getFullYear()} Sridhar Katakam. Built with Docusaurus.`,
      },
    }),
};

export default config;
