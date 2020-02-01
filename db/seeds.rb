a.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: " Lacus faucibus velit, in consectetuer sapien erat nec quam. Integer
      bibendum odio sit amet neque. Integer imperdiet rhoncus mi. Pellentesque
      malesuada purus id purus. Quisque viverra porta lectus. Sed lacus leo, feugiat
      at, consectetuer eu, luctus quis, risus. Suspendisse faucibus orci et nunc.
      Nullam vehicula fermentum risus. Fusce felis nibh, dignissim vulputate,
      ultrices quis, lobortis et, arcu. Duis aliquam libero non diam.

      Vestibulum placerat tincidunt tortor. Ut vehicula ligula quis lectus. In eget
      velit. Quisque vel risus. Mauris pede. Nullam ornare sapien sit amet nisl. Cras
      tortor. Donec tortor lorem, dignissim sit amet, pulvinar eget, mattis eu,
      metus. Cras vestibulum erat ultrices.  ",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts"

5.times do |skill|
  Skill.create!(
    title: 'Rails ${skill}',
    percent_utilezed: 13
  )
end

puts "5 skills created"

8.times do |portafolio_item|
  Portafolio.create!(
    title: "Portafolio title: #{portafolio_item}",
    subtitle: "RoR",
    body: " Facilisis ante nisi eget lectus. Sed a est. Aliquam nec felis eu
      sem euismod viverra. Suspendisse felis mi, dictum id, convallis ac, mattis non,
      nibh. Donec sagittis quam eu mauris. Phasellus et leo at quam dapibus
      pellentesque. In non lacus. Nullam tristique nunc ut arcu scelerisque
      aliquam. Nullam viverra magna vitae leo. Vestibulum in lacus sit amet
      lectus tempus aliquet. Duis cursus nisl ac orci. Donec non nisl. Mauris
      lacus sapien, congue a, facilisis at, egestas vel, quam. Vestibulum ante
      ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.
      Phasellus ipsum odio, suscipit nec, fringilla at, vehicula quis, tellus.
      Phasellus.",
      main_image:  "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |portafolio_item|
  Portafolio.create!(
    title: "Portafolio title: #{portafolio_item}",
    subtitle: "Angular",
    body: " Facilisis ante nisi eget lectus. Sed a est. Aliquam nec felis eu
      sem euismod viverra. Suspendisse felis mi, dictum id, convallis ac, mattis non,
      nibh. Donec sagittis quam eu mauris. Phasellus et leo at quam dapibus
      pellentesque. In non lacus. Nullam tristique nunc ut arcu scelerisque
      aliquam. Nullam viverra magna vitae leo. Vestibulum in lacus sit amet
      lectus tempus aliquet. Duis cursus nisl ac orci. Donec non nisl. Mauris
      lacus sapien, congue a, facilisis at, egestas vel, quam. Vestibulum ante
      ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.
      Phasellus ipsum odio, suscipit nec, fringilla at, vehicula quis, tellus.
      Phasellus.",
      main_image:  "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "portafolio created"

1.times do |portafolio_item|
  Portafolio.create!(
    title: "Portafolio title: #{portafolio_item}",
    subtitle: "Angular",
    body: " Facilisis ante nisi eget lectus. Sed a est. Aliquam nec felis eu
      sem euismod viverra. Suspendisse felis mi, dictum id, convallis ac, mattis non,
      nibh. Donec sagittis quam eu mauris. Phasellus et leo at quam dapibus
      pellentesque. In non lacus. Nullam tristique nunc ut arcu scelerisque
      aliquam. Nullam viverra magna vitae leo. Vestibulum in lacus sit amet
      lectus tempus aliquet. Duis cursus nisl ac orci. Donec non nisl. Mauris
      lacus sapien, congue a, facilisis at, egestas vel, quam. Vestibulum ante
      ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.
      Phasellus ipsum odio, suscipit nec, fringilla at, vehicula quis, tellus.
      Phasellus.",
      main_image:  "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/350x200"
  )
end

3.times do |technology|
  Portafolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "Technology created"
