# x_ray

x_ray is a gem that helps easily display code examples. Uses https://github.com/simplabs/highlight for syntax highlighting which is supported by http://pygments.org

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

Works with plain html and embedded helper methods

```erb
<%= x_ray do %>
  <div>
    <ol>
      <li>First thing</li>
      <li>Second thing</li>
      <li>Third thing</li>
    </ol>
  </div>
<% end %>

<%= x_ray do %>
  <%= submit_tag 'Set Time Zone', class: 'button' %>
<% end %>

<%= x_ray do %>
  &lt;%= submit_tag 'Set Time Zone', class: 'button' %&gt;
<% end %>
```

<img src="http://i.imgur.com/2wtvxkT.png">

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
