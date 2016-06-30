# x_ray

x_ray is a gem that helps easily display code examples, supports plain HTML and ERB.

## Installation

Include gem in Gemfile:

```ruby
gem 'x_ray'
```

Import CSS file in `application.css`

```css
@import 'x_ray/prettifier';
```

Include helper in `application_helper.rb`

```ruby
include XRay::Helper
```

## Usage

```erb
<!-- Render HTML from HTML -->
<%= x_ray do %>
  <ol>
    <li>First thing</li>
    <li>Second thing</li>
  </ol>
<% end %>

<!-- Render HTML from ERB -->
<%= x_ray do %>
  <%= submit_tag 'Set Time Zone', class: 'button button-primary' %>
<% end %>

<!-- Render ERB from ERB -->
<%= x_ray_erb do %>
  &lt;%= submit_tag 'Set Time Zone', class: 'button button-primary' %&gt;
<% end %>

<!-- Render ERB from ERB for `render` (inserting ERB with block requires one-off logic) -->
<%= x_ray_erb_render(layout: 'components/collapsable', locals: { heading: 'My virtual training plan'}) do %>
  <div class="box-small">
    <p class="outer-box-none">look at all this fun stuff in here!</p>
  </div>
<% end %>
```

<img src="http://i.imgur.com/X1QeI6M.png">

### Customization

You can customize the output by overriding the default styles.

Example:
```css
.x-ray-block {
  .example {
    background-color: blue;
    padding: 40px;
  }

  .code-scan {
    background-color: red;
    padding: 40px;
  }
}
```
