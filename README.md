# NervesOnJetsonNano

**TODO: Add description**

## Targets

Nerves applications produce images for hardware targets based on the
`MIX_TARGET` environment variable. If `MIX_TARGET` is unset, `mix` builds an
image that runs on the host (e.g., your laptop). This is useful for executing
logic tests, running utilities, and debugging. Other targets are represented by
a short name like `rpi3` that maps to a Nerves system image for that platform.
All of this logic is in the generated `mix.exs` and may be customized. For more
information about targets see:

https://hexdocs.pm/nerves/targets.html#content


## Build Firmware

In order to build the firmware you need to have additional repositories present in a similar folder structure:

/parent-directory/
  - your_nerves_project
  - nerves_system_jetson_nano # from https://github.com/verypossible/nerves_system_jetson_nano

The nerves_system_jetson_nano requires additional sources
- linux-tegra-4.9 # from https://github.com/OE4T/linux-tegra-4.9

The nerves_system_jetson_nano expects to use the tegra patched kernel source. I am not sure what the expected method of integration is, but this works:

```bash
tar -czv --exclude="*.git" -f ~/.nerves/dl/linux/linux-oe4t-patches-l4t-r32.5.tar.gz linux-tegra-4.9
```

After this you can run the usual steps as outlined in `Getting Started`

## Getting Started

To start your Nerves app:
  * `export MIX_TARGET=my_target` or prefix every command with
    `MIX_TARGET=my_target`. For example, `MIX_TARGET=rpi3`
  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix firmware.burn`

## Learn more

  * Official docs: https://hexdocs.pm/nerves/getting-started.html
  * Official website: https://nerves-project.org/
  * Forum: https://elixirforum.com/c/nerves-forum
  * Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
  * Source: https://github.com/nerves-project/nerves
