# Svelte Perfis

Svelte Perfis is a simple web application developed using Svelte and TypeScript. Its primary purpose is to help you explore and discover GitHub repositories effortlessly. With a user-friendly input text field, you can search for GitHub users and retrieve information about their most recently updated repositories.

## Key Features

GitHub Repository Search: Enter a GitHub username, and Svelte Perfis will retrieve information about the repositories owned by that user.

Latest Repository Updates: Discover the most recently updated repositories for the user you've searched for. Stay up-to-date with the latest changes and contributions.

## Technologies Used

Svelte: A modern JavaScript framework for building user interfaces. Svelte provides an efficient and highly reactive approach to UI development.

TypeScript: Svelte Perfis leverages TypeScript for strong typing and enhanced development experience.

# Get started (without Docker)

*Note that you will need to have [Node.js](https://nodejs.org) installed.*

Install the dependencies...

```bash
cd svelte-app
npm install
```

...then start [Rollup](https://rollupjs.org):

```bash
npm run dev
```

Navigate to [localhost:8080](http://localhost:8080). You should see your app running. Edit a component file in `src`, save it, and reload the page to see your changes.

By default, the server will only respond to requests from localhost. To allow connections from other computers, edit the `sirv` commands in package.json to include the option `--host 0.0.0.0`.

If you're using [Visual Studio Code](https://code.visualstudio.com/) we recommend installing the official extension [Svelte for VS Code](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode). If you are using other editors you may need to install a plugin in order to get syntax highlighting and intellisense.

# Get started (with Docker)

Create base image...

```bash
docker build -t svelte-perfis .
```

...then start:

```bash
docker run -d -p 3001:5000 --name svelte-perfis_v1.0 svelte-perfis
```

Navigate to [localhost:3001](http://localhost:3001). You should see your app running. Edit a component file in `src`, save it, and reload the page to see your changes.

To change the app port, just change the value on Dockerfile CMD command.

To change the container port exposed to your machine, change the -p argument of docker command to required value. For example, to use exposed port 3333:

```bash
docker run -d -p 3333:5000 --name svelte-perfis_v1.0 svelte-perfis
```

## Building and running in production mode

To create an optimised version of the app:

```bash
npm run build
```

You can run the newly built app with `npm run start`. This uses [sirv](https://github.com/lukeed/sirv), which is included in your package.json's `dependencies` so that the app will work when you deploy to platforms like [Heroku](https://heroku.com).


## Single-page app mode

By default, sirv will only respond to requests that match files in `public`. This is to maximise compatibility with static fileservers, allowing you to deploy your app anywhere.

If you're building a single-page app (SPA) with multiple routes, sirv needs to be able to respond to requests for *any* path. You can make it so by editing the `"start"` command in package.json:

```js
"start": "sirv public --single"
```

## Using TypeScript

This template comes with a script to set up a TypeScript development environment, you can run it immediately after cloning the template with:

```bash
node scripts/setupTypeScript.js
```

Or remove the script via:

```bash
rm scripts/setupTypeScript.js
```

If you want to use `baseUrl` or `path` aliases within your `tsconfig`, you need to set up `@rollup/plugin-alias` to tell Rollup to resolve the aliases. For more info, see [this StackOverflow question](https://stackoverflow.com/questions/63427935/setup-tsconfig-path-in-svelte).

## Deploying to the web

### With [Vercel](https://vercel.com)

Install `vercel` if you haven't already:

```bash
npm install -g vercel
```

Then, from within your project folder:

```bash
cd public
vercel deploy --name my-project
```

### With [surge](https://surge.sh/)

Install `surge` if you haven't already:

```bash
npm install -g surge
```

Then, from within your project folder:

```bash
npm run build
surge public my-project.surge.sh
```
