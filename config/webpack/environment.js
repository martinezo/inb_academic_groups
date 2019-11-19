const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

// RMO
environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        jQuery: 'jquery/src/jquery',
        $: 'jquery/src/jquery',
        Popper: ['popper.js', 'default']
    })
)

module.exports = environment

// environment.plugins.append(
//     'Provide',
//     new webpack.ProvidePlugin({
//         jQuery: 'jquery/src/jquery',
//         $: 'jquery/src/jquery',
//         Popper: ['popper.js', 'default']
//     })
// )
