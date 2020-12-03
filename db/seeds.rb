Prompt.destroy_all
Mood.destroy_all
Goal.destroy_all
User.destroy_all



amy = User.create(
  name: "aymes", 
  email: "nugget@gmail.com",
  password: "nugget"
)

BlogPost.create(
  title: "dummy post",
  content: "I am thankful for Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ipsum purus, bibendum sit amet vulputate eget, porta semper ligula. Donec bibendum vulputate erat, ac fringilla mi finibus nec. Donec ac dolor sed dolor porttitor blandit vel vel purus. Fusce vel malesuada ligula. Nam quis vehicula ante, eu finibus est. Proin ullamcorper fermentum orci, quis finibus massa. Nunc lobortis, massa ut rutrum ultrices, metus metus finibus ex, sit amet facilisis neque enim sed neque. Quisque accumsan metus vel maximus consequat. Suspendisse lacinia tellus a libero volutpat maximus.",
  user_id: amy.id
)


prompt1 = Prompt.create(
  statement: "Today, I will...",
  group: "Morning"
)

prompt2 = Prompt.create(
  statement: "How will I face any challenges that may come my way?",
  group: "Morning"
)
prompt3 = Prompt.create(
  statement: "One thing I can do to make my day better?",
  group: "Morning"
)
prompt4 = Prompt.create(
  statement: "Right now I am feeling...",
  group: "Morning"
)
prompt5 = Prompt.create(
  statement: "Today I will challenge myself by...",
  group: "Morning"
)

prompt6 = Prompt.create(
  statement: "I will prioritize myself by...",
  group: "Morning"
)

prompt7 = Prompt.create(
  statement: "I am thankful for...",
  group: "Morning"
)

prompt8 = Prompt.create(
  statement: "I am grateful for...",
  group: "Morning"
)

Prompt.create(
  statement: "Set your intentions for the day. I intend to...",
  group: "Morning"
)
Prompt.create(
  statement: "One thing I will accomplish today...",
  group: "Morning"
)
Prompt.create(
  statement: "I will focus on things that makes me feel good such as...",
  group: "Morning"
)
Prompt.create(
  statement: "Today I am excited for...",
  group: "Morning"
)
Prompt.create(
  statement: "What is something I can do to brighten up someone else's day today?",
  group: "Morning"
)
Prompt.create(
  statement: "Is there a different way of thinking about a situation that's bringing me down?",
  group: "Morning"
)
Prompt.create(
  statement: "A quality that I admire about myself is...",
  group: "Morning"
)
Prompt.create(
  statement: "Something I can't live without and why?",
  group: "Morning"
)
Prompt.create(
  statement: "Today I promise myself that I will not...",
  group: "Morning"
)
Prompt.create(
  statement: "An accomplishment from yesterday that I am proud of...",
  group: "Morning"
)
Prompt.create(
  statement: "I want to learn more about...",
  group: "Morning"
)
Prompt.create(
  statement: "My motto for today is...",
  group: "Morning"
)
Prompt.create(
  statement: "Today I told someone I appreciated them and that someone was...",
  group: "Night"
)
Prompt.create(
  statement: "I am very thankful for...",
  group: "Night"
)
Prompt.create(
  statement: "I am grateful for...",
  group: "Night"
)
Prompt.create(
  statement: "My day could've been better if...",
  group: "Night"
)
Prompt.create(
  statement: "One good thing about my day today was...",
  group: "Night"
)
Prompt.create(
  statement: "Today I felt...",
  group: "Night"
)
Prompt.create(
  statement: "What made me laugh today?",
  group: "Night"
)
Prompt.create(
  statement: "Today I told someone I loved them because...",
  group: "Night"
)
Prompt.create(
  statement: "Someone that made my day today is...",
  group: "Night"
)
Prompt.create(
  statement: "Right now I am feeling...",
  group: "Night"
)
Prompt.create(
  statement: "What is an important lesson I've learned today or recently?",
  group: "Night"
)


DailyEntry.create(
  rating: 1,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt1.id,
  date: "2020-12-03T01:33:37.107Z"
)

DailyEntry.create(
  rating: 3,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt2.id,
  date: "2020-12-02T01:33:37.107Z"
)

DailyEntry.create(
  rating: 5,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt3.id,
  date: "2020-11-28T01:33:37.107Z"
)


DailyEntry.create(
  rating: 4,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt3.id,
  date: "2020-11-27T01:33:37.107Z"
)

DailyEntry.create(
  rating: 5,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt7.id,
  date: "2020-11-29T01:33:37.107Z"
)

DailyEntry.create(
  rating: 3,
  content: "rad",
  user_id: amy.id,
  prompt_id: prompt7.id,
  date: "2020-11-30T01:33:37.107Z"
)


DailyEntry.create(
    rating: 2,
    content: "rad",
    user_id: amy.id,
    prompt_id: prompt5.id,
    date: "2020-11-26T01:33:37.107Z"
  )

DailyEntry.create(
    rating: 3,
    content: "rad",
    user_id: amy.id,
    prompt_id: prompt1.id,
    date: "2020-11-25T01:33:37.107Z"
)

Goal.create(
  name: "Increase Happiness"
)
Goal.create(
  name: "Reduce Anxiety"
)
Goal.create(
  name: "Build Self-Esteem"
)
Goal.create(
  name: "Physical Fitness"
)
Goal.create(
  name: "Dietary Health"
)
Goal.create(
  name: "Improve Sleep"
)
Goal.create(
  name: "Manage Stress"
)
Goal.create(
  name: "Improve Productivity"
)
