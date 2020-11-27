Prompt.destroy_all
Mood.destroy_all
Goal.destroy_all
User.destroy_all
BlogPost.destroy_all

BlogPost.create(
  title: "dummy post",
  content: "I am thankful for Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ipsum purus, bibendum sit amet vulputate eget, porta semper ligula. Donec bibendum vulputate erat, ac fringilla mi finibus nec. Donec ac dolor sed dolor porttitor blandit vel vel purus. Fusce vel malesuada ligula. Nam quis vehicula ante, eu finibus est. Proin ullamcorper fermentum orci, quis finibus massa. Nunc lobortis, massa ut rutrum ultrices, metus metus finibus ex, sit amet facilisis neque enim sed neque. Quisque accumsan metus vel maximus consequat. Suspendisse lacinia tellus a libero volutpat maximus."
)

User.create(
  name: "aymes", 
  email: "nugget@gmail.com",
  password: "nugget"
)

Prompt.create(
  statement: "Today, I will...",
  group: "Morning"
)
Prompt.create(
  statement: "How will I face any challenges that may come my way?",
  group: "Morning"
)
Prompt.create(
  statement: "One thing I can do to make my day better?",
  group: "Morning"
)
Prompt.create(
  statement: "Right now I am feeling...",
  group: "Morning"
)
Prompt.create(
  statement: "Today I will challenge myself by...",
  group: "Morning"
)

Prompt.create(
  statement: "I will prioritize myself by...",
  group: "Morning"
)
Prompt.create(
  statement: "I am thankful for...",
  group: "Morning"
)
Prompt.create(
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



Mood.create(
  name: "Calm",
  group: "Positive"
)
Mood.create(
  name: "Confident",
  group: "Positive"
)
Mood.create(
  name: "Content",
  group: "Positive"
)
Mood.create(
  name: "Energized",
  group: "Positive"
)
Mood.create(
  name: "Enthusiastic",
  group: "Positive"
)
Mood.create(
  name: "Excited",
  group: "Positive"
)
Mood.create(
  name: "Free",
  group: "Positive"
)
Mood.create(
  name: "Grateful",
  group: "Positive"
)
Mood.create(
  name: "Happy",
  group: "Positive"
)
Mood.create(
  name: "Inspired",
  group: "Positive"
)
Mood.create(
  name: "Loving",
  group: "Positive"
)
Mood.create(
  name: "Motivated",
  group: "Positive"
)
Mood.create(
  name: "Optimistic",
  group: "Positive"
)
Mood.create(
  name: "Passionate",
  group: "Positive"
)
Mood.create(
  name: "Peaceful",
  group: "Positive"
)
Mood.create(
  name: "Proud",
  group: "Positive"
)
Mood.create(
  name: "Refreshed",
  group: "Positive"
)
Mood.create(
  name: "Relieved",
  group: "Positive"
)
Mood.create(
  name: "Satisfied",
  group: "Positive"
)
Mood.create(
  name: "Secure",
  group: "Positive"
)

Mood.create(
  name: "Afraid",
  group: "Negative"
)
Mood.create(
  name: "Angry",
  group: "Negative"
)
Mood.create(
  name: "Annoyed",
  group: "Negative"
)
Mood.create(
  name: "Anxious",
  group: "Negative"
)
Mood.create(
  name: "Ashamed",
  group: "Negative"
)
Mood.create(
  name: "Burned Out",
  group: "Negative"
)
Mood.create(
  name: "Confused",
  group: "Negative"
)
Mood.create(
  name: "Depressed",
  group: "Negative"
)
Mood.create(
  name: "Disappointed",
  group: "Negative"
)
Mood.create(
  name: "Embarassed",
  group: "Negative"
)
Mood.create(
  name: "Exhausted",
  group: "Negative"
)
Mood.create(
  name: "Guilty",
  group: "Negative"
)
Mood.create(
  name: "Jealous",
  group: "Negative"
)
Mood.create(
  name: "Lonely",
  group: "Negative"
)
Mood.create(
  name: "Nervous",
  group: "Negative"
)
Mood.create(
  name: "Sad",
  group: "Negative"
)
Mood.create(
  name: "Stressed",
  group: "Negative"
)
Mood.create(
  name: "Tired",
  group: "Negative"
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
