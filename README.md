# x_ray

A gem to help display code examples

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
<%= x_ray do %>
  <div>
    <ol>
      <li>First thing</li>
      <li>Second thing</li>
      <li>Third thing</li>
    </ol>
  </div>
<% end %>
```
